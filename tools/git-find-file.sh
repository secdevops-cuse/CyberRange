for branch in $(git rev-list --all)
do
	  git ls-tree -r --name-only $branch | grep "$1" | sed 's/^/'$branch': /'
  done
