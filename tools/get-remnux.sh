#!/bin/bash -
#===============================================================================
# vim: softtabstop=4 shiftwidth=4 expandtab fenc=utf-8 spell spelllang=en cc=81
#===============================================================================

#------------------------------------------------------------------------------
# get-remnux.sh
#
# Install or upgrade the REMnux distro on top of a supported Linux distribution.
# See https://REMnux.org for details about REMnux and the installation process.
#
# wget --quiet -O - https://remnux.org/get-remnux.sh | sudo bash
#
# The original version of this script is based, with permission,
# on SIFT Workstation's bootstrap.sh script from 
# https://github.com/sans-dfir/sift-bootstrap
#------------------------------------------------------------------------------

__ScriptVersion="REMnux-v6-131"
LOGFILE="/var/log/remnux-install.log"

echoerror() {
    printf "${RC} * ERROR${EC}: $@\n" 1>&2;
}

echoinfo() {
    printf "${GC} * INFO${EC}: %s\n" "$@";
}

echowarn() {
    printf "${YC} * WARN${EC}: %s\n" "$@";
}

__apt_get_install_noinput() {
    apt-get install -y -o DPkg::Options::=--force-confold $@; return $?
}

__apt_get_upgrade_noinput() {
    apt-get upgrade -y -o DPkg::Options::=--force-confold $@; return $?
}

__apt_get_remove_noinput() {
  apt-get purge -qq -y $@ >> $LOGFILE 2>&1
  rm -f /var/lib/dpkg/info/$@.* 2>/dev/null
  return 0
}

__pip_install_noinput() {
    pip install --upgrade $@; return $?
}

__pip3_install_noinput() {
    pip3 install --upgrade $@; return $?
}

__pip_pre_install_noinput() {
    pip install --pre --upgrade $@; return $?
}

__ruby_install_noinput() {
  gem install $@; return $?
}

__check_unparsed_options() {
    shellopts="$1"
    # grep alternative for SunOS
    if [ -f /usr/xpg4/bin/grep ]; then
        grep='/usr/xpg4/bin/grep'
    else
        grep='grep'
    fi
    unparsed_options=$( echo "$shellopts" | ${grep} -E '(^|[[:space:]])[-]+[[:alnum:]]' )
    if [ "x$unparsed_options" != "x" ]; then
        usage
        echo
        echoerror "Options are only allowed before install arguments."
        echo
        exit 1
    fi
}

configure_cpan() {
    (echo y;echo o conf prerequisites_policy follow;echo o conf commit)|cpan > /dev/null
}

usage() {
    echo "usage"
    exit 1
}

cleanup() {
  echoinfo "Cleaning Up"
  apt-get autoremove -qq -y >> $LOGFILE 2>&1
  rm -rf /var/cache/apt/archives/* > /dev/null
  
  # Remove Firefox extensions that used to be centrally added by the prior version of this script
  rm -rf /usr/lib/firefox/browser/extensions/firebug@software.joehewitt.com > /dev/null
  rm -rf /usr/lib/firefox/browser/extensions/\{E6C1199F-E687-42da-8C24-E7770CC3AE66\} > /dev/null
  
  if [ ! -d /usr/share/remnux ]; then
    echoerror "Some REMnux packages didn't install."
    echoerror "Rebooting and running this command again sometimes addresses the issue."
    echoerror "For additional details, take a look at $LOGFILE."
  fi
  return 0
}

enable_additional_repositories() {
  if [ "x$(grep -R remnux /etc/apt/sources.list /etc/apt/sources.list.d/ | grep -v '#')" = "x" ]; then
    echoinfo "Enabling the REMnux repository"
    add-apt-repository -y ppa:remnux/stable >> $LOGFILE 2>&1
    ERROR=$?
      if [ $ERROR -ne 0 ]; then
        echoerror "Could not enable the REMnux repository (Error Code: $ERROR)."
        echoerror "REMnux-specific packages won't install from this repository."
      fi
  fi
  
  if [ "x$(grep -R apt.dockerproject.org /etc/apt/sources.list /etc/apt/sources.list.d/ | grep -v '#')" = "x" ]; then
    echoerror "Enabling the Docker repository"
    apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D 
    add-apt-repository -y "deb https://apt.dockerproject.org/repo ubuntu-$(lsb_release -sc) main"
    ERROR=$?
      if [ $ERROR -ne 0 ]; then
        echoerror "Could not enable the Docker repository (Error Code: $ERROR)."
      fi
  fi

  wget -O - http://www.inetsim.org/inetsim-archive-signing-key.asc | apt-key add - >> $LOGFILE 2>&1
  if [ "x$(grep -R inetsim /etc/apt/sources.list /etc/apt/sources.list.d/ | grep -v '#')" = "x" ]; then
    echoinfo "Enabling InetSim repository"
    echo "deb http://www.inetsim.org/debian/ binary/" | tee -a /etc/apt/sources.list.d/inetsim.list  >> $LOGFILE 2>&1
  fi

  if [ "x$(grep -R sift /etc/apt/sources.list /etc/apt/sources.list.d/ | grep -v '#')" = "x" ]; then
    echoinfo "Enabling the SIFT repository"
    add-apt-repository -y ppa:sift/stable  >> $LOGFILE 2>&1
    ERROR=$?
    if [ $ERROR -ne 0 ]; then
      echoerror "Could not enable the SIFT repository (Error Code: $ERROR)."
      echoerror "Packages from the SIFT repository won't install."
    fi
  fi

  if [ "x$(grep -R draios /etc/apt/sources.list /etc/apt/sources.list.d/ | grep -v '#')" = "x" ]; then
    echoinfo "Enabling Draios repository for Sysdig"
    wget -q -O - https://s3.amazonaws.com/download.draios.com/DRAIOS-GPG-KEY.public | apt-key add -   >> $LOGFILE 2>&1
    wget -q --output-document /etc/apt/sources.list.d/draios.list http://download.draios.com/stable/deb/draios.list  >> $LOGFILE 2>&1
  fi
  
  # These repositories are needed for REMnux, but are disabled on some Ubuntu 14.04 base builds, so enable them.
  if [ "x$(grep -R universe /etc/apt/sources.list /etc/apt/sources.list.d/ | grep -v '#')" = "x" ]; then
    echoinfo "Enabling Universe repository"
    add-apt-repository -y "deb http://archive.ubuntu.com/ubuntu trusty universe" >> $LOGFILE 2>&1
  fi
  sed -i '/deb http:\/\/archive.ubuntu.com\/ubuntu trusty multiverse/s/^#\s*//g' /etc/apt/sources.list >> $LOGFILE 2>&1
  sed -i '/deb-src http:\/\/archive.ubuntu.com\/ubuntu trusty multiverse/s/^#\s*//g' /etc/apt/sources.list >> $LOGFILE 2>&1
  sed -i '/deb http:\/\/archive.ubuntu.com\/ubuntu trusty-updates multiverse/s/^#\s*//g' /etc/apt/sources.list >> $LOGFILE 2>&1
  sed -i '/deb-src http:\/\/archive.ubuntu.com\/ubuntu trusty-updates multiverse/s/^#\s*//g' /etc/apt/sources.list >> $LOGFILE 2>&1
  sed -i '/deb http:\/\/archive.ubuntu.com\/ubuntu trusty-backports main restricted universe multiverse/s/^#\s*//g' /etc/apt/sources.list >> $LOGFILE 2>&1
  sed -i '/deb-src http:\/\/archive.ubuntu.com\/ubuntu trusty-backports main restricted universe multiverse/s/^#\s*//g' /etc/apt/sources.list >> $LOGFILE 2>&1
  sed -i '/deb http:\/\/security.ubuntu.com\/ubuntu trusty-security multiverse/s/^#\s*//g' /etc/apt/sources.list >> $LOGFILE 2>&1
  sed -i '/deb-src http:\/\/security.ubuntu.com\/ubuntu trusty-security multiverse/s/^#\s*//g' /etc/apt/sources.list >> $LOGFILE 2>&1

  # Some 64-bit systems are not configured to support i386 packages. Let's make sure they are enabled.
  dpkg --add-architecture i386 >> $LOGFILE 2>&1

  return 0
}

# Some files and directories need to be removed before reinstalling the corresponding tool
remove_before_install() {
  locations="/usr/local/lib/python2.7/dist-packages/rekall*"
  for LOCATION in $locations; do
    rm -rf $LOCATION >> $LOGFILE 2>&1
  done
}

install_ubuntu_14.04_deps() {

  echoinfo "Updating the base APT repository package list... "
  apt-get update >> $LOGFILE 2>&1

  echoinfo "Installing the software-properties-common package... "
  # This also installs python3-pycurl, python3-software-properties and unattended-upgrades packages.
  __apt_get_install_noinput software-properties-common >> $LOGFILE 2>&1

  echoinfo "Enabling additional APT repositories..."
  enable_additional_repositories >> $LOGFILE 2>&1

  echoinfo "Updating the APT repository package list..."
  apt-get update >> $LOGFILE 2>&1

  echoinfo "Upgrading all APT packages to latest versions..."
  __apt_get_upgrade_noinput >> $LOGFILE 2>&1

  ldconfig
  return 0
}

install_ubuntu_14.04_packages() {
    packages="xterm
    vbindiff
    wxhexeditor
    feh
    libffi-dev
    binutils
    curl
    exfat-utils
    xpdf
    stunnel4
    imagemagick
    gdb-minimal
    python-hachoir-core
    python-hachoir-regex
    python-hachoir-metadata
    python-hachoir-parser
    python-hachoir-subfile
    python-hachoir-urwid
    python-hachoir-wx
    firefox
    xmlstarlet
    inspircd
    epic5
    tor
    torsocks
    pdftk
    libemu2
    clamav-daemon
    bulk-extractor
    ltrace
    strace
    inetsim
    openssh-client
    openssh-server
    foremost
    ngrep
    unhide
    tcpdump
    default-jre
    tcpick
    wireshark
    radare2
    p7zip-full
    upx-ucl
    swftools
    libmozjs-24-bin
    rhino
    python-crypto
    python-volatility
    ssdeep
    docker-engine
    libimage-exiftool-perl
    scalpel
    liblzma-dev
    libwebkitgtk-1.0-0
    lame
    ibus
    libgif4
    libgif-dev
    libjpeg-turbo8
    libjpeg-turbo8-dev
    libgtk2.0-0:i386
    libxxf86vm1:i386
    libsm6:i386
    lib32stdc++6
    gtk2-engines:i386
    gtk2-engines-*:i386
    libgtkmm-2.4-1c2:i386
    libcanberra-gtk-module:i386
    libxslt1-dev
    libxml2-dev
    zlib1g-dev
    libyaml-dev
    bundler
    build-essential
    python
    python-dev
    automake
    python-pip
    python3-pip
    ruby
    ruby-dev
    git
    subversion
    mercurial
    bundler
    unrar
    dos2unix
    tcpxtract
    libsqlite3-dev
    python-pydot
    libncurses5:i386
    automake
    libmagic-dev
    libtool
    bison
    flex
    libboost1.54-all-dev
    libncurses5-dev
    python-setuptools
    python-magic
    libpcre3
    libpcre3-dev
    libpcre++-dev
    automake
    openssl
    python-qt4
    libzmq3-dev
    libc6-dev-i386
    usbmount
    python-numpy
    python-scipy
    python-levenshtein
    python-pil
    python-gtksourceview2
    python-gtk2
    libfuzzy-dev
    graphviz
    python-utidylib
    rsakeyfind
    aeskeyfind
    pyew
    nginx
    ruby-gtk2
    libjavassist-java
    tcpflow
    geany
    unicode 
    qpdf
    pdfresurrect
    sysdig
    yara
    libyara3
    python-yara
    python-pyasn1
    python-capstone
    remnux-config
    remnux-rules
    remnux-volatility-plugins
    remnux-pylibemu
    remnux-pyv8
    remnux-v8
    python-pefile
    remnux-python-ssdeep
    remnux-libdasm
    remnux-scripts
    remnux-officedissector
    remnux-didier
    remnux-xorsearch
    remnux-xorstrings
    remnux-ioc-writer
    remnux-findaes
    remnux-nsrllookup
    remnux-balbuzard
    remnux-signsrch
    remnux-bokken
    remnux-viper
    remnux-pdfxray-lite
    remnux-trid
    remnux-rule-editor
    remnux-peepdf
    remnux-mastiff
    remnux-udis86
    remnux-vivisect
    remnux-edb-debugger
    remnux-peframe
    remnux-rabcdasm
    remnux-jad
    remnux-jd-gui
    remnux-automater
    remnux-network-miner
    remnux-python-chilkat
    remnux-androwarn
    remnux-androguard
    remnux-pev
    remnux-bashacks
    remnux-pype32
    remnux-ratdecoders
    remnux-procdot
    remnux-densityscout
    remnux-ragpicker
    remnux-vttool
    remnux-bytehist
    libolecf-tools
    remnux-burpsuite-free
    scite
    remnux-js-didier
    remnux-flare
    remnux-oletools
    remnux-captipper
    remnux-cfr
    remnux-pycdc
    remnux-virustotalapi
    remnux-dc3-mwcp
    libemail-outlook-message-perl
    python-dnspython
    remnux-ioc-parser
    elfparser
    remnux-just-metadata
    remnux-thug
    flare-floss
    remnux-dshell
    remnux-detect-it-easy
    python-passivetotal
    remnux-portex
    remnux-msoffice-crypt
    flare-fakenet-ng"

    if [ "$@" = "dev" ]; then
        packages="$packages"
    elif [ "$@" = "stable" ]; then
        packages="$packages"
    fi

    # Install LXDE if a window manager isn't already active,
    # unless NOLXDE was specified by the user.
    if [ -z "$XAUTHORITY" -a "$NOLXDE" -eq 0 ]; then
      echoinfo "Installing LXDE Window Manager"
      __apt_get_install_noinput lxde >> $LOGFILE 2>&1
      ERROR=$?
      if [ $ERROR -ne 0 ]; then
        echoerror "Install Failure: lxde (Error Code: $ERROR)"
      else
        echoinfo "Installed APT Package: lxde"
        echoinfo "Setting up auto-login for user $SUDO_USER"
        sed -i s/#\ autologin=dgod/autologin=$SUDO_USER/ /etc/lxdm/lxdm.conf >> $LOGFILE 2>&1
        sed -i s/^disable=0$/disable=1/ /etc/lxdm/lxdm.conf >> $LOGFILE 2>&1
      fi
    fi

    for PACKAGE in $packages; do
        echoinfo "Installing APT Package: $PACKAGE"
        __apt_get_install_noinput $PACKAGE >> $LOGFILE 2>&1
        ERROR=$?
        if [ $ERROR -ne 0 ]; then
            echoerror "Install Failure: $PACKAGE (Error Code: $ERROR)"
        fi
    done
    
    if [ -e /usr/bin/freshclam ]; then
      echoinfo "Updating ClamAV Signatures"
      freshclam --quiet >> $LOGFILE 2>&1
    fi
    
    return 0
}

remove_ubuntu_packages() {
  packages="netcat-traditional
  cups-client
  remnux-python-pdns"

  if [ "$@" = "dev" ]; then
    packages="$packages"
  elif [ "$@" = "stable" ]; then
    packages="$packages"
  fi

  for PACKAGE in $packages; do
    echoinfo "Removing Unnecessary APT Package: $PACKAGE"
    __apt_get_remove_noinput $PACKAGE >> $LOGFILE 2>&1
  done

  apt-get autoremove -y >> $LOGFILE 2>&1

  return 0
}

install_ubuntu_14.04_pip_packages() {
  pip_packages="distorm3
  cryptography
  pyelftools
  rekall
  jsbeautifier
  xortool
  cybox
  olefile
  mitmproxy
  pydeep
  bottle
  pylzma
  pyelftools
  bitstring
  requesocks
  rarfile
  fuzzywuzzy
  r2pipe
  pypdns
  pypssl
  ipwhois
  shodan
  pygeoip
  docker-compose
  ndg-httpsclient
  dnslib
  netfilterqueue
  pydivert"
  pip_pre_packages=""

  if [ "$@" = "dev" ]; then
    pip_packages="$pip_packages"
  elif [ "$@" = "stable" ]; then
    pip_packages="$pip_packages"
  fi

  ERROR=0
  for PACKAGE in $pip_pre_packages; do
    CURRENT_ERROR=0
    echoinfo "Installing Python (pre) Package: $PACKAGE"
    __pip_pre_install_noinput $PACKAGE >> $LOGFILE 2>&1 || (let ERROR=ERROR+1 && let CURRENT_ERROR=1)
    if [ $CURRENT_ERROR -eq 1 ]; then
      echoerror "Python Package Install Failure: $PACKAGE"
    fi
  done

  for PACKAGE in $pip_packages; do
    CURRENT_ERROR=0
    echoinfo "Installing Python Package: $PACKAGE"
    __pip_install_noinput $PACKAGE >> $LOGFILE 2>&1 || (let ERROR=ERROR+1 && let CURRENT_ERROR=1)
    if [ $CURRENT_ERROR -eq 1 ]; then
      echoerror "Python Package Install Failure: $PACKAGE"
    fi
  done

  if [ $ERROR -ne 0 ]; then
    return 1
  fi

  return 0
}

install_ubuntu_14.04_pip3_packages() {
  pip3_packages="pefile
  python-magic
  yara-python
  virustotal-api
  oletools
  M2Crypto"
  pip_pre_packages=""

  if [ "$@" = "dev" ]; then
    pip_packages="$pip_packages"
  elif [ "$@" = "stable" ]; then
    pip_packages="$pip_packages"
  fi

  ERROR=0

  for PACKAGE in $pip3_packages; do
    CURRENT_ERROR=0
    echoinfo "Installing Python3 Package: $PACKAGE"
    __pip3_install_noinput $PACKAGE >> $LOGFILE 2>&1 || (let ERROR=ERROR+1 && let CURRENT_ERROR=1)
    if [ $CURRENT_ERROR -eq 1 ]; then
      echoerror "Python3 Package Install Failure: $PACKAGE"
    fi
  done

  if [ $ERROR -ne 0 ]; then
    return 1
  fi

  return 0
}

install_ruby_gems() {
  echoinfo "Installing Ruby Gems"

  ruby_gems="therubyracer
  origami
  passivedns-client
  pedump"

  if [ "$@" = "dev" ]; then
    ruby_gems="$ruby_gems"
  elif [ "$@" = "stable" ]; then
    ruby_gems="$ruby_gems"
  fi

  ERROR=0
  for GEM in $ruby_gems; do
    CURRENT_ERROR=0
    echoinfo "Installing Ruby Gem: $GEM"
    __ruby_install_noinput $GEM >> $LOGFILE 2>&1 || (let ERROR=ERROR+1 && let CURRENT_ERROR=1)
    if [ $CURRENT_ERROR -eq 1 ]; then
      echoerror "Ruby Gem Install Failure: $GEM"
    fi
  done

  if [ $ERROR -ne 0 ]; then
    return 1
  fi

  echoinfo "Tweaking Ruby Gems Configuration"

  # This is needed for Origami PDF Walker
  if [ ! -d $HOME/.local ]; then
    mkdir -p $HOME/.local
    chown $SUDO_USER:$SUDOUSER $HOME/.local
  fi
  if [ ! -d $HOME/.local/share ]; then
    mkdir -p $HOME/.local/share
    chown $SUDO_USER:$SUDOUSER $HOME/.local/share
  fi

  # This is needed for passivedns-client
  touch $HOME/.passivedns-client

  return 0
}

update_remnux_documentation() {

  echoinfo "Updating REMnux documentation"

  sudo -u $SUDO_USER mkdir -p $HOME/Desktop >> $LOGFILE 2>&1
  TMP_DOCS_DIR="/tmp/remnux-docs.$$"
  rm -rf $TMP_DOCS_DIR >> $LOGFILE 2>&1
  git clone -q -b gh-pages https://github.com/REMnux/docs.git /tmp/remnux-docs.$$ >> $LOGFILE 2>&1
  rm -rf /usr/share/remnux/docs >> $LOGFILE 2>&1
  mv $TMP_DOCS_DIR /usr/share/remnux/docs >> $LOGFILE 2>&1
  if [ -e /usr/share/applications/show-remnux-docs.desktop -a ! -e $HOME/Desktop/REMnux\ Docs ]; then
    cp -f /usr/share/applications/show-remnux-docs.desktop $HOME/Desktop/REMnux\ Docs >> $LOGFILE 2>&1
  fi
  
  if [ -d /usr/share/remnux/docs -a ! -e /var/www/remnux-docs ]; then
    ln -s /usr/share/remnux/docs /var/www/remnux-docs >> $LOGFILE 2>&1
  fi
  
  if [ -e /usr/share/remnux/remnux-tools-sheet.html -a ! -e $HOME/Desktop/REMnux\ Tools\ Sheet ]; then
    ln -s /usr/share/remnux/remnux-tools-sheet.html $HOME/Desktop/REMnux\ Tools\ Sheet >> $LOGFILE 2>&1
  fi
  
  if [ -e /usr/share/remnux/remnux-malware-analysis-tips.pdf -a ! -e $HOME/Desktop/REMnux\ Cheat\ Sheet ]; then
    ln -s /usr/share/remnux/remnux-malware-analysis-tips.pdf $HOME/Desktop/REMnux\ Cheat\ Sheet >> $LOGFILE 2>&1
  fi
  
  return 0
}

configure_ubuntu() {

  echoinfo "Creating mount points and other directories"
  for dir in cdrom
  do
    mkdir -p /mnt/$dir >> $LOGFILE 2>&1
  done
  mkdir -p /opt >> $LOGFILE 2>&1
  mkdir -p /var/log/thug >> $LOGFILE 2>&1
  chmod a+w /var/log/thug $LOGFILE 2>&1

  echoinfo "Disabling Tor"
  service tor stop >> $LOGFILE 2>&1
  update-rc.d tor disable >> $LOGFILE 2>&1

  echoinfo "Stopping SSH daemon"
  service ssh stop >> $LOGFILE 2>&1
  echo manual | tee -a /etc/init/ssh.override >> $LOGFILE 2>&1
  if [ -f /etc/ssh/sshd_config ]; then
    if [ "x$(egrep '^UseDNS ' /etc/ssh/sshd_config)" = "x" ]; then
      echo "UseDNS no" >> /etc/ssh/sshd_config
    fi
   fi

  echoinfo "Stopping ClamAV daemons"
  service clamav-daemon stop >> $LOGFILE 2>&1
  update-rc.d clamav-daemon disable >> $LOGFILE 2>&1
  service clamav-freshclam stop >> $LOGFILE 2>&1
  update-rc.d clamav-freshclam disable >> $LOGFILE 2>&1

  echoinfo "Stopping Docker daemon"
  service docker stop >> $LOGFILE 2>&1
  echo manual | tee -a /etc/init/docker.override  >> $LOGFILE 2>&1

  echoinfo "Stopping Nginx daemon"
  service nginx stop >> $LOGFILE 2>&1
  update-rc.d nginx disable >> $LOGFILE 2>&1

  echoinfo "Stopping InspIRCd daemon"
  if [ -e /etc/default/inspircd ]; then
    sed -i s/INSPIRCD_ENABLED=0/INSPIRCD_ENABLED=1/ /etc/default/inspircd >> $LOGFILE 2>&1
  fi
  service inspircd stop >> $LOGFILE 2>&1
  update-rc.d inspircd disable >> $LOGFILE 2>&1

  return 0
}

configure_ubuntu_remnux_system() {

  if [ "x$(dmidecode -s system-product-name | grep VMware)" != "x" ]; then
  
    if [ "x$(grep 'blacklist i2c-piix4' /etc/modprobe.d/blacklist.conf)" = "x" ]; then
      echo "blacklist i2c-piix4" | tee -a /etc/modprobe.d/blacklist.conf >> $LOGFILE 2>&1
    fi
    if [ -f /usr/share/remnux/legacy-network.sh -a ! -e /etc/init.d/network ]; then
      ln -s /usr/share/remnux/legacy-network.sh /etc/init.d/network >> $LOGFILE 2>&1
    fi
    
    # Get rid of the "intel_rapl: no valid rapl domains found" error
    if [ "x$(grep 'blacklist intel_rapl' /etc/modprobe.d/blacklist.conf)" = "x" ]; then
      echo "blacklist intel_rapl" | tee -a /etc/modprobe.d/blacklist.conf >> $LOGFILE 2>&1
    fi
    
    if [ -z "$XAUTHORITY" -a "$NOLXDE" -eq 0 ]; then
      
      # On a physical system a screensaver might be useful, but it's annoying on a virtual one
      echoinfo "Removing Unnecessary APT Package: xscreensaver"
      __apt_get_remove_noinput xscreensaver
      __apt_get_remove_noinput xscreensaver-data
    fi
  fi

  if [ "x$(dmidecode -s system-product-name | grep VirtualBox )" != "x" ]; then
  
    # Get rid of the "intel_rapl: no valid rapl domains found" error
    if [ "x$(grep 'blacklist intel_rapl' /etc/modprobe.d/blacklist.conf)" = "x" ]; then
      echo "blacklist intel_rapl" | tee -a /etc/modprobe.d/blacklist.conf >> $LOGFILE 2>&1
    fi
  
    if [ -z "$XAUTHORITY" -a "$NOLXDE" -eq 0 ]; then
      # On a physical system a screensaver might be useful, but it's annoying on a virtual one
      echoinfo "Removing Unnecessary APT Package: xscreensaver"
      __apt_get_remove_noinput xscreensaver
      __apt_get_remove_noinput xscreensaver-data
    fi
  fi

  if [ "x$(grep cdrom /etc/fstab | grep -v '#')" = "x" ]; then
    echoinfo "Setting up /etc/fstab for CD-ROM"
    echo "/dev/sr0	/mnt/cdrom	udf,iso9660	user,noauto,exec,utf8	0	0" | tee -a /etc/fstab >> $LOGFILE 2>&1
  fi
  sed -i 's|^/dev/fd0|#/dev/fd0|' /etc/fstab >> $LOGFILE 2>&1
  
  if [ -e /etc/usbmount/usbmount.conf ]; then
    echoinfo "Setting up USB auto-mount options"
    if [ "x$(egrep '^FILESYSTEMS=' /etc/usbmount/usbmount.conf | grep -v 'ntfs')" != "x" ]; then
      sed -i 's|\"$| ntfs\"|' /etc/usbmount/usbmount.conf >> $LOGFILE 2>&1
    fi
    if [ "x$(egrep '^FILESYSTEMS=' /etc/usbmount/usbmount.conf | grep -v 'exfat')" != "x" ]; then
      sed -i 's|\"$| exfat\"|' /etc/usbmount/usbmount.conf >> $LOGFILE 2>&1
    fi
  fi

  if [ -e $HOME/.bashrc ]; then
    if [ "x$(grep 'set -o noclobber' $HOME/.bashrc)" = "x" ]; then
      echoinfo "Setting noclobber for $SUDO_USER"
      echo "set -o noclobber" | tee -a $HOME/.bashrc >> $LOGFILE 2>&1
    fi
  else
    echo "set -o noclobber" | tee $HOME/.bashrc >> $LOGFILE 2>&1
  fi
  if [ "x$(grep 'set -o noclobber' /root/.bashrc)" = "x" ]; then
    echoinfo "Setting noclobber for root"
    echo "set -o noclobber" | tee -a /root/.bashrc >> $LOGFILE 2>&1
  fi

  if [ -f /usr/bin/dumpcap ]; then
    echoinfo "Configuring packet capture capabilities for non-root users"
    setcap 'CAP_NET_RAW+eip CAP_NET_ADMIN+eip' /usr/bin/dumpcap >> $LOGFILE 2>&1
  fi

  echoinfo "Configuring sudo"
  if [ "x$(grep '$SUDO_USER' /etc/sudoers)" = "x" ]; then
    echo "$SUDO_USER ALL=NOPASSWD: ALL" | tee -a /etc/sudoers >> $LOGFILE 2>&1
  fi
  sed -i -e '/secure_path=/ s/^#*/#/' /etc/sudoers >> $LOGFILE 2>&1

  if [ -f /etc/inetsim/inetsim.conf ]; then
    # Disable unnecessary INetSim services and set permissions
    echoinfo "Configuring INetSim"
    inetsim_services="dns tftp irc ntp finger ident syslog time_tcp time_udp daytime_tcp daytime_udp echo_tcp echo_udp discard_tcp discard_udp quotd_tcp quotd_udp chargen_tcp chargen_udp dummy_tcp dummy_udp"
    for INETSIM_SERVICE in $inetsim_services; do
      sed -i -e "/start_service $INETSIM_SERVICE/ s/^#*/#/" /etc/inetsim/inetsim.conf
    done
    if [ -d /var/log/inetsim ];then
      touch /var/log/inetsim/service.log /var/log/inetsim/debug.log /var/log/inetsim/main.log >> $LOGFILE 2>&1
      chmod g+w /var/log/inetsim/service.log /var/log/inetsim/debug.log /var/log/inetsim/main.log >> $LOGFILE 2>&1
      chmod a+r /var/log/inetsim/service.log /var/log/inetsim/debug.log /var/log/inetsim/main.log >> $LOGFILE 2>&1
    fi
  fi

  echoinfo "Configuring Web Server"
  sed -i 's/worker_processes 4/worker_processes 1/' /etc/nginx/nginx.conf
  sed -i 's/root \/usr\/share\/nginx\/html;/root \/var\/www;/' /etc/nginx/sites-enabled/default
  if [ ! -e /var/www ]; then
    mkdir -p /var/www >> $LOGFILE 2>&1
    chown -R www-data:www-data /var/www >> $LOGFILE 2>&1
    chmod a+w /var/www >> $LOGFILE 2>&1
  fi
  if [ "x$(grep 'autoindex on' /etc/nginx/sites-enabled/default)" = "x" ]; then
    # Enable autoindex if it's not already enabled
    sed -i 's/^\s.*location \/ {/\tlocation \/ {\n\t\tautoindex on;/' /etc/nginx/sites-enabled/default
  fi
  if [ ! -e /var/www/fake-forms -a -e /usr/share/remnux/fake-forms ]; then
    ln -s /usr/share/remnux/fake-forms /var/www/fake-forms >> $LOGFILE 2>&1
  fi

  echoinfo "Setting up aliases"
  if [ -f $HOME/.bash_aliases ]; then
    if [ "x$(grep 'alias mountwin' $HOME/.bash_aliases)" = "x" ]; then
      echoinfo "Configuring aliases for $SUDO_USER"
      echo "alias mountwin='mount -o ro,loop,show_sys_files,streams_interface=windows'" >> $HOME/.bash_aliases
    fi
  else
    echo "alias mountwin='mount -o ro,loop,show_sys_files,streams_interface=windows'" > $HOME/.bash_aliases
  fi
  if [ -f $HOME/.bashrc -a -f /usr/share/remnux/remnux-aliases.sh ]; then
    if [ "x$(grep 'source /usr/share/remnux/remnux-aliases.sh' $HOME/.bashrc)" = "x" ]; then
      echo "source /usr/share/remnux/remnux-aliases.sh" | tee -a $HOME/.bashrc >> $LOGFILE 2>&1
    fi
  fi
  if [ -f /root/.bashrc -a -f /usr/share/remnux/remnux-aliases.sh ]; then
    if [ "x$(grep 'source /usr/share/remnux/remnux-aliases.sh' /root/.bashrc)" = "x" ]; then
      echo "source /usr/share/remnux/remnux-aliases.sh" | tee -a /root/.bashrc >> $LOGFILE 2>&1
    fi
  fi

  echoinfo "Configuring global PATH"
  extrapaths="/opt/remnux-scripts
  /opt/remnux-didier
  /opt/remnux-balbuzard
  /opt/remnux-oletools
  /opt/remnux-viper
  /opt/remnux-pdfxray-lite
  /opt/remnux-thug/src
  /opt/remnux-peepdf
  /opt/remnux-vivisect
  /opt/remnux-rabcdasm
  /opt/remnux-ratdecoders
  /opt/remnux-procdot
  /opt/remnux-dshell"
  for EXTRAPATH in $extrapaths; do
    if [ "x$(grep '$EXTRAPATH' /etc/environment)" = "x" ]; then
        sed -i "s,^PATH=\",PATH=\"$EXTRAPATH:,g" /etc/environment >> $LOGFILE 2>&1
      fi
  done

  if [ -e /etc/apt/apt.conf.d/10periodic ]; then
    sed -i "s/APT::Periodic::Update-Package-Lists \"1\"/APT::Periodic::Update-Package-Lists \"0\"/g" /etc/apt/apt.conf.d/10periodic
  fi

  echoinfo "Setting up symlinks, permissions and options for useful tools"
  if [ ! -L /usr/bin/vol.py ] && [ ! -e /usr/bin/vol.py ]; then
    ln -s /usr/bin/vol.py /usr/bin/vol >> $LOGFILE 2>&1
  fi
  if [ -f /etc/inspircd/inspircd.motd ]; then
    cp -f /dev/null /etc/inspircd/inspircd.motd >> $LOGFILE 2>&1
  fi
  if [ -f /usr/share/remnux/inspircd.conf -a -d /etc/inspircd ]; then
    if [ -d /usr/share/doc/inspircd ]; then
      mv -f /etc/inspircd/inspircd.conf /usr/share/doc/inspircd/inspircd-default.conf >> $LOGFILE 2>&1
    fi
    cp -f /usr/share/remnux/inspircd.conf /etc/inspircd >> $LOGFILE 2>&1
  fi
  if [ -f /etc/epic5/servers ]; then
    mv -f /etc/epic5/servers /etc/epic5/servers-default >> $LOGFILE 2>&1
    echo "localhost:6667" > /etc/epic5/servers 2>> $LOGFILE
  fi
  if [ -f /usr/share/remnux/scalpel.conf -a -f /etc/scalpel/scalpel.conf ]; then
    if [ -d /usr/share/doc/scalpel ]; then
      mv -f /etc/scalpel/scalpel.conf /usr/share/doc/scalpel/scalpel-default.conf >> $LOGFILE 2>&1
    fi
    cp -f /usr/share/remnux/scalpel.conf /etc/scalpel >> $LOGFILE 2>&1
  fi
  if [ -f /usr/share/remnux/wireshark-preferences -a ! -e $HOME/.wireshark/preferences ]; then
    sudo -u $SUDO_USER mkdir -p $HOME/.wireshark >> $LOGFILE 2>&1
    sudo -u $SUDO_USER cp -f /usr/share/remnux/wireshark-preferences $HOME/.wireshark/preferences >> $LOGFILE 2>&1
  fi
  if [ -f /usr/share/remnux/procdot.conf -a ! -e $HOME/.procdot/.procdot ]; then
    sudo -u $SUDO_USER mkdir -p $HOME/.procdot >> $LOGFILE 2>&1
    sudo -u $SUDO_USER cp -f /usr/share/remnux/procdot.conf $HOME/.procdot/.procdot >> $LOGFILE 2>&1
    sudo -u $SUDO_USER touch $HOME/.procdot/default.pd >> $LOGFILE 2>&1
  fi
  if [ -f /usr/share/remnux/scite.conf -a ! -e $HOME/.SciTEUser.properties ]; then
    sudo -u $SUDO_USER cp -f /usr/share/remnux/scite.conf $HOME/.SciTEUser.properties >> $LOGFILE 2>&1
  fi
  if [ -d /opt/remnux-network-miner/AssembledFiles -a ! -e /var/log/network-miner ]; then
    # Tweak where NetworkMiner saves its output
    if [ ! "$(ls -A /opt/remnux-network-miner/AssembledFiles)" ]; then
      mkdir /var/log/network-miner >> $LOGFILE 2>&1
      chmod a+w /var/log/network-miner >> $LOGFILE 2>&1
      rmdir /opt/remnux-network-miner/AssembledFiles >> $LOGFILE 2>&1
      ln -s /var/log/network-miner /opt/remnux-network-miner/AssembledFiles >> $LOGFILE 2>&1
    fi
  fi
  if [ -d /opt/remnux-network-miner/Captures ]; then
    chmod a+w /opt/remnux-network-miner/Captures >> $LOGFILE 2>&1
  fi
  EDB_CONFIG=$HOME/.config/codef00.com/edb.conf
  if [ -f /usr/share/remnux/edb.conf -a ! -f $EDB_CONFIG ]; then
    sudo -u $SUDO_USER mkdir -p $HOME/.config/codef00.com 2>/dev/null
    sudo -u $SUDO_USER cp /usr/share/remnux/edb.conf $HOME/.config/codef00.com >> $LOGFILE 2>&1
  fi
  if [ -f $EDB_CONFIG ]; then
    sudo -u $SUDO_USER mkdir -p $HOME/.config/codef00.com/edb-symbols 2>/dev/null
    sudo -u $SUDO_USER mkdir -p $HOME/.config/codef00.com/edb-session 2>/dev/null
    sed -i "s,/usr/bin/lxterminal,/usr/bin/xterm,g" $EDB_CONFIG >> $LOGFILE 2>&1
    sed -i "s,^directory.symbol.path=$,directory.symbol.path=$HOME/.config/codef00.com/edb-symbols,g" $EDB_CONFIG >> $LOGFILE 2>&1
    sed -i "s,^directory.session.path=$,directory.session.path=$HOME/.config/codef00.com/edb-session,g" $EDB_CONFIG >> $LOGFILE 2>&1
    sed -i "s,^directory.plugin.path=$,directory.plugin.path=/lib64/edb,g" $EDB_CONFIG >> $LOGFILE 2>&1
    sed -i "s,^directory.plugin.path=$HOME$,directory.plugin.path=/lib64/edb,g" $EDB_CONFIG >> $LOGFILE 2>&1
  fi
  if [ -d /opt/remnux-androwarn/Report ]; then
    # Allow non-privileged users to write to Androwarn's Reports directory
    chown -R $SUDO_USER:$SUDO_USER /opt/remnux-androwarn/Report >> $LOGFILE 2>&1
  fi
  if [ -h /etc/alternatives/js -a -e /usr/bin/js24 ]; then
    # Rhino creates a "js" link to point to itself, but it's better to use actual SpiderMonkey
    rm -f /etc/alternatives/js >> $LOGFILE 2>&1
    ln -s /usr/bin/js24 /etc/alternatives/js >> $LOGFILE 2>&1
  fi
  if [ -f /usr/share/remnux/wget.conf -a ! -e $HOME/.wgetrc ]; then
    sudo -u $SUDO_USER cp -f /usr/share/remnux/wget.conf $HOME/.wgetrc >> $LOGFILE 2>&1
  fi
  if [ -f /usr/share/remnux/curl.conf -a ! -e $HOME/.curlrc ]; then
    sudo -u $SUDO_USER cp -f /usr/share/remnux/curl.conf $HOME/.curlrc >> $LOGFILE 2>&1
  fi
  if [ -f /usr/bin/wxHexEditor -a ! -e $HOME/.wxHexEditor ]; then
    # Configure wxHexEditor not to check for updates, because the updates are hard for the user to cleanly install on Ubuntu.
    sudo -u $SUDO_USER echo UpdateCheck=0 >> $HOME/.wxHexEditor
  fi

  if [ -z "$XAUTHORITY" -a "$NOLXDE" -eq 0 ]; then
    echoinfo "Setting LXDE options"

    # Set up LXTerminal to start automatically when the user logs in
    if [ ! -d /home/$SUDO_USER/.config/autostart ]; then
      sudo -u $SUDO_USER mkdir -p /home/$SUDO_USER/.config/autostart >> $LOGFILE 2>&1
    fi
    if [ ! -L /home/$SUDO_USER/.config/autostart -a -e /var/lib/menu-xdg/applications/menu-xdg/X-Debian-Applications-Terminal-Emulators-lxterminal.desktop ]; then
      sudo -u $SUDO_USER cp /var/lib/menu-xdg/applications/menu-xdg/X-Debian-Applications-Terminal-Emulators-lxterminal.desktop /home/$SUDO_USER/.config/autostart >> $LOGFILE 2>&1
    fi

    # Set up LXTerminal options
    if [ -e /usr/share/remnux/lxterminal.conf ]; then
      if [ ! -e $HOME/.config/lxterminal/lxterminal.conf ]; then
        sudo -u $SUDO_USER mkdir -p $HOME/.config/lxterminal >> $LOGFILE 2>&1
        sudo -u $SUDO_USER cp /usr/share/remnux/lxterminal.conf $HOME/.config/lxterminal >> $LOGFILE 2>&1
      fi
    fi
    
    # Set up LXDE app launch bar options, including which icons should be displayed there
    if [ -e /usr/share/remnux/app-launch-bar.conf ]; then
      if [ ! -e $HOME/.config/lxpanel/LXDE/panels/panel ]; then
        sudo -u $SUDO_USER mkdir -p $HOME/.config/lxpanel/LXDE/panels >> $LOGFILE 2>&1
        sudo -u $SUDO_USER cp /usr/share/remnux/app-launch-bar.conf $HOME/.config/lxpanel/LXDE/panels/panel >> $LOGFILE 2>&1
      fi
    fi
    
    # Disable console messages that are shown when the system boots up and shuts down
    sed -i 's|^console output|#console output|' /etc/init/rc.conf >> $LOGFILE 2>&1

    # Set up the desktop to user the REMnux logo
    if [ -e /usr/share/remnux/remnux-logo.png -a -e /usr/share/remnux/pcmanfm.conf ]; then
      if [ ! -e $HOME/.config/pcmanfm/LXDE/pcmanfm.conf ]; then
        sudo -u $SUDO_USER mkdir -p $HOME/.config/pcmanfm/LXDE >> $LOGFILE 2>&1
        sudo -u $SUDO_USER cp /usr/share/remnux/pcmanfm.conf $HOME/.config/pcmanfm/LXDE >> $LOGFILE 2>&1
      fi
    fi
    
    # Fix an error that would be otherwise seen when the user logs out using the GUI
    if [ -f /etc/pam.d/lxdm ]; then
      if [ "x$(egrep '^session required pam_systemd\.so$' /etc/pam.d/lxdm)" = "x" ]; then
        echo "session required pam_systemd.so" >> /etc/pam.d/lxdm
      fi
    fi

  fi

  # Set up links to match the setup of older REMnux versions
  echoinfo "Applying REMnux backwards compatibility settings"
  if [ -f /usr/share/remnux/objects.js ]; then
    mkdir -p /usr/local/etc
    if [ ! -e /usr/local/etc/def.js ]; then
      ln -s /usr/share/remnux/objects.js /usr/local/etc/def.js >> $LOGFILE 2>&1
    fi
  fi
  if [ -d /opt/remnux-ragpicker -a ! -e /usr/local/MalwareCrawler/src ]; then
    mkdir -p /usr/local/MalwareCrawler
    ln -s /opt/remnux-ragpicker /usr/local/MalwareCrawler/src >> $LOGFILE 2>&1
  fi
  if [ ! -e /media/cdrom ]; then
    ln -s /mnt/cdrom /media/cdrom >> $LOGFILE 2>&1
  fi
  if [ -d /opt/remnux-balbuzard -a ! -e /usr/local/balbuzard ]; then
    ln -s /opt/remnux-balbuzard /usr/local/balbuzard >> $LOGFILE 2>&1
  fi
  
  # Just for fun
  echoinfo "Taking the dog for a walk"

  echoinfo "Setting permissions for $SUDO_USER"  
  chown -f -R $SUDO_USER:$SUDO_USER /home/$SUDO_USER
  if [ `getent group docker` ]; then
    usermod -a -G docker $SUDO_USER
  fi
  
  return 0

}

complete_message() {
    echoinfo "---------------------------------------------------------------"
    echoinfo "REMnux Installation Complete!"
    echoinfo "See documentation at https://REMnux.org/docs"
    echoinfo "Reboot for the settings to take full effect (\"sudo reboot\")."
    echoinfo "---------------------------------------------------------------"
    if [ "x$(dmidecode -s system-product-name | grep VMware)" != "x" ]; then
      if [ ! -e /usr/bin/vmware-user -a ! -e /usr/bin/vmware-user-suid-wrapper ]; then
        echoinfo "Since you've on a VMware platform, consider installing VMware tools."
        echoinfo "On VMWare Workstation or ESX, run this command on REMnux now:"
        echoinfo "\"sudo apt-get install open-vm-tools-desktop\"."
        echoinfo "On VMware Fusion, activate VMWare Tools' installation using the Fusion"
        echoinfo "menu and then run on REMnux: \"install-vmware-tools\"."
        echoinfo "---------------------------------------------------------------"
      fi
    fi
    return 0
}

UPGRADE_ONLY=0
CONFIGURE_ONLY=0
NOLXDE=0
INSTALL=1

OS=$(lsb_release -si)
ARCH=$(uname -m | sed 's/x86_//;s/i[3-6]86/32/')
VER=$(lsb_release -sr)

if [ $OS != "Ubuntu" ]; then
    echoerror "The REMnux distro is only installable on Ubuntu operating systems at this time."
    exit 1
fi

if [ $ARCH != "64" ]; then
    echoerror "The REMnux distro is only installable on a 64-bit architecture at this time."
    exit 2
fi

if [ $VER != "14.04" ]; then
    echoerror "The REMnux distro is only installable on Ubuntu 14.04 at this time."
    exit 3
fi

if [ `whoami` != "root" ]; then
    echoerror "The REMnux installation/upgrade script must run as root."
    echoerror "Preferred Usage: sudo ./get-remnux.sh [options]"
    exit 3
fi

if [ "$SUDO_USER" = "" ]; then
    echoerror "The SUDO_USER variable doesn't seem to be set"
    exit 4
fi

while getopts ":hvnicu" opt
do
case "${opt}" in
    h ) echo "Usage:"
        echo ""
        echo "sudo ./get-remnux.sh [options]"
        echo ""
        echo "-i  Install (assumed when no other option is supplied)"
        echo "-u  Upgrade only"
        echo "-c  Only apply configuration tweaks, without installing software"
        echo "-n  Don't install the LXDE X11 desktop environment"
        exit 0
        ;;
    v ) echo "$0 -- Version $__ScriptVersion"; exit 0 ;;
    n ) NOLXDE=1 ;;
    i ) INSTALL=1 ;;
    c ) CONFIGURE_ONLY=1; INSTALL=0; NOLXDE=1; ;;
    u ) UPGRADE_ONLY=1; ;;
    \?) echo ""
        echoerror "Option does not exist: $OPTARG"
        usage
        exit 1
        ;;
esac
done

shift $(($OPTIND-1))

if [ "$#" -eq 0 ]; then
    ITYPE="stable"
else
    __check_unparsed_options "$*"
    ITYPE=$1
    shift
fi

echo "---------------------------------------------------------------" >> $LOGFILE
echo "Running REMnux installer version $__ScriptVersion on `date`" >> $LOGFILE
echo "---------------------------------------------------------------" >> $LOGFILE

if [ "$UPGRADE_ONLY" -eq 1 ]; then
  echoinfo "Upgrading REMnux. Details logged to $LOGFILE."
  echoinfo "All other options will be ignored."
  export DEBIAN_FRONTEND=noninteractive
  remove_before_install
  install_ubuntu_${VER}_deps $ITYPE || echoerror "Updating Depedencies Failed"
  install_ubuntu_${VER}_packages $ITYPE || echoerror "Updating Packages Failed"
  remove_ubuntu_packages $ITYPE
  install_ubuntu_${VER}_pip_packages $ITYPE || echoerror "Updating Python Packages Failed"
  install_ubuntu_${VER}_pip3_packages $ITYPE || echoerror "Updating Python Packages Failed"
  install_ruby_gems $ITYPE || echoerror "Updating Ruby Gems Failed"
  update_remnux_documentation
  
  if [ "$(dpkg -l | egrep 'ii\s+open-vm-tools-desktop\s')x" != "x" ]; then
    # If the open-vm-tools-desktop package is installed, try updating it
    __apt_get_install_noinput open-vm-tools-desktop >> $LOGFILE 2>&1  || echoerror "Updating Open VMware Tools Failed"
  fi
  
  cleanup
  echoinfo "REMnux Upgrade Complete"
  exit 0
fi

# Check installation type
if [ "$(echo $ITYPE | egrep '(dev|stable)')x" = "x" ]; then
    echoerror "Installation type \"$ITYPE\" is not known."
    exit 1
fi

echoinfo "Installing REMnux. Details logged to $LOGFILE."

if [ "$INSTALL" -eq 1 ] && [ "$CONFIGURE_ONLY" -eq 0 ]; then
    export DEBIAN_FRONTEND=noninteractive
    remove_before_install
    install_ubuntu_${VER}_deps $ITYPE
    install_ubuntu_${VER}_packages $ITYPE
    remove_ubuntu_packages $ITYPE
    install_ubuntu_${VER}_pip_packages $ITYPE
    install_ruby_gems $ITYPE
fi

configure_ubuntu
configure_cpan
configure_ubuntu_remnux_system
update_remnux_documentation
cleanup
complete_message
