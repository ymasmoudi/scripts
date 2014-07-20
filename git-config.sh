#!/bin/bash

# git global configuration
git config --global user.email "y.masmoudi@gmail.com"
git config --global user.name "Youssef EL MASMOUDI"
git config --global core.editor "vim"
git config --global color.ui "true"

# git auto completion
cd ~
curl -OL https://github.com/git/raw/master/contrib/completion/git-completion.bash
curl -OL https://github.com/git/raw/master/contrib/completion/git-prompt.sh
mv ~/git-completion.bash ~/.git-completion.bash
mv ~/git-prompt.sh ~/.git-prompt.sh

echo -e "\nif [ -f ~/.git-completion.bash ]; then
    source  ~/.git-completion.bash 
fi;\n" >> ~/.bash_profile

echo -e "\nif [ -f ~/.git-prompt.sh ]; then
    source  ~/.git-prompt.sh
fi;\n" >> ~/.bash_profile
cd $OLDPWD

# PS1 git configuration
echo -e "export PS1='\W\$(__git_ps1 "\(\%s\)") > '\n" >> ~/.bash_profile

# git alias
git config --global alias.st "status"
git config --global alias.co "checkout"
git config --global alias.ci "commit"
git config --global alias.df "diff"
git config --global alias.dfs "diff --staged"
#"-p"   //sha1..sha2 or br1..b2
git config --global alias.logp "-p"
git config --global alias.logs "-stat --summary"
git config --global alias.logo "--oneline"
git config --global alias.logg "--graph --all --decorate"
git config --global alias.stashl "stash list"
git config --global alias.stashc "stash clear"
git config --global alias.stashd "stash drop"
git config --global alias.stasha "stash apply"
git config --global alias.stashsh "stash show -p"
# save "comment"
git config --global alias.stashsv "stash save"
git config --global alias.ft "fetch"
# fetch+merge
git config --global alias.pl "pull"
git config --global alias.lst "ls-tree"

# general git command
#git checkout -b // create un checkout
#git branch --merged // list of branches merged in the current one
#git branch -m old new // rename a branch
#git merge --abort //in case of conflict
#git branch -u // to track the branch 
#git checkout -b non_tracking origin/non_tracking
#git push origin --delete non_tracking
