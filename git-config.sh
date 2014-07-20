#!/bin/bash

# git global configuration
git config --global user.email "y.masmoudi@gmail.com"
git config --global user.name "Youssef EL MASMOUDI"
git config --global core.editor "vim"
git config --global color.ui "true"

# git auto completion
cd ~
curl -OL https://github.com/git/raw/master/contrib/completion/git-completion.bash
mv ~/git-completion.bash ~/.git-completion.bash
echo -e "\nif [ -f ~/.git-completion.bash ]; then
    source  ~/.git-completion.bash 
fi;\n" >> ~/.bash_profile
cd $OLDPWD

# PS1 git configuration
echo -e "export PS1='\W$(__git_ps1 "(%s)") > '\n" >> ~/bash_profile

# git alias
#git log --stat --summary  // global statistics about the diff
#git log --oneline
#git log -p sha1.. file.c
#git log --graph --all --decorate
#git ls-tree
#git diff --staged
#git checkout -b // create un checkout
#git diff branch1..branch2
#git branch --merged // list of branches merged in the current one
#git branch -m old new // rename a branch

#git merge branch
#fast-forward merge => no changes in master 
#true merge => master changed

#git merge --abort //in case of conflict
#git stash -save "comment"
#git stash list
#git stash show -p name_of_stash
#git stash pop name //pop it out of list
#git stash apply name //keep a copy in the list
#git stash drop
#git stash clear //drop all stashes
# git branch -u // to track the branch 
