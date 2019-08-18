git submodule  foreach 'git status |grep -F "Your branch is up to date" ; [[ $? = 0 ]] || exit 1'
