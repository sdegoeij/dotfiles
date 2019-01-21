# Simple installation script.
if [ ! -d $HOME/.dotfiles/zsh-syntax-highlighting ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.dotfiles/zsh-syntax-highlighting
fi

# .zshrc
if [ -f $HOME/.zshrc ]; then
    rm $HOME/.zshrc
fi
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# gitconfig and ignore
. config.ini
gitconfig=$(<git/gitconfig)
gitconfig=${gitconfig//'GIT_NAME'/$name}
gitconfig=${gitconfig//'GIT_EMAIL'/$email}
gitconfig=${gitconfig//'GITHUB_USER'/$user}
gitconfig=${gitconfig//'GITHUB_TOKEN'/$token}

if [ -f $HOME/.gitconfig ]; then
    rm $HOME/.gitconfig
fi
ln -s $HOME/.dotfiles/git/gitconfig $HOME/.gitconfig

# Prompt
if [ ! -d $HOME/.zfunctions ]; then
    mkdir $HOME/.zfunctions
fi

if [ ! -f $HOME/.dotfiles/prompt/pure.zsh ]; then
    ln -s "$HOME/.dotfiles/prompt/pure.zsh" "$HOME/.zfunctions/prompt_pure_setup"
    ln -s "$HOME/.dotfiles/prompt/async.zsh" "$HOME/.zfunctions/async"
fi

echo "Installed! Reload your terminal or open a new tab."