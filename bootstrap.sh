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

ln -sf /Users/juanchauta/src/github.com/jmchauta/dotfiles/configs/.aliases ~/.aliases
echo "--- /Users/juanchauta/src/github.com/jmchauta/dotfiles/configs/.aliases -> ~/.aliases"

ln -sf /Users/juanchauta/src/github.com/jmchauta/dotfiles/configs/.p10k_config ~/.p10k_config
echo "--- /Users/juanchauta/src/github.com/jmchauta/dotfiles/configs/.p10k_config -> ~/.p10k_config"

ln -sf /Users/juanchauta/src/github.com/jmchauta/dotfiles/configs/.p10k.zsh ~/.p10k.zsh
echo "--- /Users/juanchauta/src/github.com/jmchauta/dotfiles/configs/.p10k.zsh -> ~/.p10k.zsh"

ln -sf /Users/juanchauta/src/github.com/jmchauta/dotfiles/configs/.pryrc ~/.pryrc
echo "--- /Users/juanchauta/src/github.com/jmchauta/dotfiles/configs/.pryrc -> ~/.pryrc"

ln -sf /Users/juanchauta/src/github.com/jmchauta/dotfiles/configs/.iterm_config ~/.iterm_config
echo "--- /Users/juanchauta/src/github.com/jmchauta/dotfiles/configs/.iterm_config -> ~/.iterm_config"

# ZSH
ln -sf /Users/juanchauta/src/github.com/jmchauta/dotfiles/.zlogin ~/.zlogin
echo "--- /Users/juanchauta/src/github.com/jmchauta/dotfiles/.zlogin -> ~/.zlogin"

ln -sf /Users/juanchauta/src/github.com/jmchauta/dotfiless/.zshrc ~/.zshrc
echo "--- /Users/juanchauta/src/github.com/jmchauta/dotfiles/.zshrc -> ~/.zshrc"

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
