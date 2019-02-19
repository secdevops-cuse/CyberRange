# PowerShell to install Python, Boto, and AWSCLI
# Check for latest Python version and update link in following line.
Invoke-WebRequest -Outfile $env:userprofile\python.msi https://www.python.org/ftp/python/2.7.9/python-2.7.9.amd64.msi
msiexec.exe /i  $env:userprofile\python.msi /quiet
set PATH "%PATH%;C:\Python27;C:\Python27\Scripts"
setx PATH "%PATH%;C:\Python27;C:\Python27\Scripts"
Invoke-WebRequest -Outfile  $env:userprofile\pip.py https://bootstrap.pypa.io/get-pip.py
sleep 30
C:\Python27\python.exe  $env:userprofile\pip.py
C:\Python27\Scripts\pip.exe install boto
C:\Python27\Scripts\pip.exe install awscli
del $env:userprofile\pip.py
del $env:userprofile\python.msi
assoc .py=py_auto_file
ftype py_auto_file="C:\Python27\python.exe" "%1" %*
