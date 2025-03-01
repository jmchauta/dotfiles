ZSH_DISABLE_COMPFIX=true

if [ "$SPIN" ]; then
  source /etc/zsh/zshrc.default.inc.zsh
fi

# source ~/.p10k_config
source ~/.aliases
source ~/.iterm_config

export PATH=/usr/local/bin:$PATH
export EDITOR=vim
