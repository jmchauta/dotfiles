#!/bin/zsh

echo
echo
echo "--- Running bootstrap.sh"
echo
echo

# Install Oh My Zsh
echo
echo "--- Installing OhMyZsh"
echo
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install powerlevel10k
echo
echo "--- Installing powerlevel10k"
echo
sh -c "git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

# Install tig
if ! command -v tig &> /dev/null; then
  echo
  echo "--- Installing tig"
  echo
  sudo apt-get install -y tig
fi

# Config files
echo
echo "--- Linking dotfiles"
echo

ln -sf ~/dotfiles/configs/.aliases ~/.aliases
echo "--- ~/dotfiles/configs/.aliases -> ~/.aliases"

ln -sf ~/dotfiles/configs/.p10k_config ~/.p10k_config
echo "--- ~/dotfiles/configs/.p10k_config -> ~/.p10k_config"

ln -sf ~/dotfiles/configs/.p10k.zsh ~/.p10k.zsh
echo "--- ~/dotfiles/configs/.p10k.zsh -> ~/.p10k.zsh"

ln -sf ~/dotfiles/configs/.pryrc ~/.pryrc
echo "--- ~/dotfiles/configs/.pryrc -> ~/.pryrc"

ln -sf ~/dotfiles/configs/.iterm_config ~/.iterm_config
echo "--- ~/dotfiles/configs/.iterm_config -> ~/.iterm_config"

# ZSH
ln -sf ~/dotfiles/.zlogin ~/.zlogin
echo "--- ~/dotfiles/.zlogin -> ~/.zlogin"

ln -sf ~/dotfiles/.zshrc ~/.zshrc
echo "--- ~/dotfiles/.zshrc -> ~/.zshrc"

# Git Aliases
echo
echo "--- Setting Up Git Global Aliases"
echo
git config --global alias.co checkout
echo "--- Setting Git alias - [checkout]: co"
git config --global alias.br branch
echo "--- Setting Git alias - [branch]: br"
git config --global alias.ci commit
echo "--- Setting Git alias - [commit]: ci"
git config --global alias.st status
echo "--- Setting Git alias - [status]: st"
git config --global alias.unstage 'reset HEAD --'
echo "--- Setting Git alias - [reset HEAD --]: unstage"
git config --global alias.last git 'log -p -1'
echo "--- Setting Git alias - [log -p -1]: last"
