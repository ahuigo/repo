for d in *;do
    if ! test -d $d;then
        continue
    fi
    repo=$(cd  $d; printf $(git remote  -v | head -1|awk '{print $2}'))
    repo=${repo//[[:space:]]}
    #test -n $repo && echo git submodule add $repo $d &&
    test -n $repo && git submodule add $repo $d
done 
