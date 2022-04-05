ZSH_DISABLE_COMPFIX=true

if [ "$SPIN" ]; then
  source /etc/zsh/zshrc.default.inc.zsh
fi

source ~/.p10k_config
source ~/.aliases
source ~/.iterm_config

export PATH=/usr/local/bin:$PATH
export EDITOR=vim

# DEV
if [[ -f /opt/dev/dev.sh ]]; then source /opt/dev/dev.sh; fi
if [ -e /Users/juanchauta/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/juanchauta/.nix-profile/etc/profile.d/nix.sh; fi
[[ -f /opt/dev/sh/chruby/chruby.sh ]] && type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; }

[[ -x /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)
