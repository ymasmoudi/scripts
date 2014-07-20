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
git --global alias.st "status"
git --global alias.co "checkout"
git --global alias.ci "commit"
git --global alias.df "diff"
git --global alias.dfs "diff --staged"
git --global alias.logp "-p"   //sha1..sha2 or br1..b2
git --global alias.logs "-stat --summary"
git --global alias.logo "--oneline"
git --global alias.logg "--graph --all --decorate"
git --global alias.stashl "stash list"
git --global alias.stashc "stash clear"
git --global alias.stashd "stash drop"
git --global alias.stasha "stash apply"
git --global alias.stashsh "stash show -p"
git --global alias.stashsv "stash save" //add comment
git --global alias.ft "fetch"
git --global alias.pl "pull"  //fetch+merge
git --global alias.lst "ls-tree"

# general git command
#git checkout -b // create un checkout
#git branch --merged // list of branches merged in the current one
#git branch -m old new // rename a branch
#git merge --abort //in case of conflict
#git branch -u // to track the branch 
#git checkout -b non_tracking origin/non_tracking
#git push origin --delete non_tracking
