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
echo -e "\n if [ -f ~/.git-completion.bash ]; then
    source  ~/.git-completion.bash 
fi;\n" >> ~/.bash_profile
cd $OLDPWD


