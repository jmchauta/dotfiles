#!/bin/zsh

echo
echo
echo "--- Running bootstrap.sh"
echo
echo

# Install Oh My Zsh
echo "--- Installing OhMyZsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install powerlevel10k
echo "--- Installing powerlevel10k"
sh -c "git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

# Install tig
if ! command -v tig &> /dev/null; then
  echo "--- Installing tig"
  sudo apt-get install -y tig
fi

# Config files
echo "--- Linking dotfiles"

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

