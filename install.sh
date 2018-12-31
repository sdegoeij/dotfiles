# Simple installation script.
if [ ! -d $HOME/.dotfiles/zsh-syntax-highlighting ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.dotfiles/zsh-syntax-highlighting
fi

# .zshrc
if [ -f $HOME/.zshrc ]; then
rm $HOME/.zshrc
fi
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Prompt
if [ ! -d $HOME/.zfunctions ]; then
    mkdir $HOME/.zfunctions
fi
ln -s "$HOME/.dotfiles/prompt/pure.zsh" "$HOME/.zfunctions/prompt_pure_setup"
ln -s "$HOME/.dotfiles/prompt/async.zsh" "$HOME/.zfunctions/async"

echo "Installed! Reload your terminal or open a new tab."