ln -s ~/dot/.tmux ~/.tmux
ln -s ~/dot/.tmux.conf ~/.tmux.conf
ln -s ~/dot/.p10k.zsh ~/.p10k.zsh
ln -s ~/dot/.zshrc ~/.zshrc
ln -s ~/dot/.alacritty.yml ~/.alacritty.yml

# oh-my-zsh
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh

# brew
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
install.sh
brew install tmux, texlive

# -- software to download
# alacritty, vscode