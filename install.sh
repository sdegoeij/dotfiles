# Simple installation script.
if [ ! -d $HOME/.dotfiles/zsh-syntax-highlighting ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.dotfiles/zsh-syntax-highlighting
fi

if [ ! -d $HOME/.dotfiles/zsh-history-substring-search ]; then
    git clone https://github.com/zsh-users/zsh-history-substring-search.git $HOME/.dotfiles/zsh-history-substring-search
fi

# .zshrc
if [ -f $HOME/.zshrc ]; then
    rm $HOME/.zshrc
fi
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# gitconfig and ignore
if [ -f $HOME/.gitconfig ]; then
    rm $HOME/.gitconfig
fi

cp git/gitconfig $HOME/.gitconfig
. $HOME/.dotfiles/config.ini

sed -in "s/GIT_NAME/$name/" $HOME/.gitconfig
sed -in "s/GIT_EMAIL/$email/" $HOME/.gitconfig
sed -in "s/GITHUB_USER/$user/" $HOME/.gitconfig
sed -in "s/GITHUB_TOKEN/$token/" $HOME/.gitconfig

# Prompt
if [ ! -d $HOME/.zfunctions ]; then
    mkdir $HOME/.zfunctions
fi

if [ ! -f $HOME/.zfunctions/pure_pure_setup ]; then
    ln -s "$HOME/.dotfiles/prompt/pure.zsh" "$HOME/.zfunctions/prompt_pure_setup"
    ln -s "$HOME/.dotfiles/prompt/async.zsh" "$HOME/.zfunctions/async"
fi

echo "Installed! Reload your terminal or open a new tab."
