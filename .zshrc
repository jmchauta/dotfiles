ZSH_DISABLE_COMPFIX=true

source ~/.p10k_config
source ~/.aliases
source ~/.iterm_config

export PATH=/usr/local/bin:$PATH

# DEV
if [[ -f /opt/dev/dev.sh ]]; then source /opt/dev/dev.sh; fi
if [ -e /Users/juanchauta/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/juanchauta/.nix-profile/etc/profile.d/nix.sh; fi
[[ -f /opt/dev/sh/chruby/chruby.sh ]] && type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; }


# SPIN DEFAULT ZSHRC

# Keep it simple when Emacs is connecting
if [[ "$TERM" == "dumb" ]]
then
  unsetopt zle
  unsetopt prompt_cr
  unsetopt prompt_subst
  if whence -w precmd >/dev/null; then
      unfunction precmd
  fi
  if whence -w preexec >/dev/null; then
      unfunction preexec
  fi
  PS1='$ '
  return
fi

# Interactive prompt (Disabled)
# autoload -Uz vcs_info
# precmd_functions+=( vcs_info )
# setopt prompt_subst

# zstyle ':vcs_info:git:*' check-for-changes true
# zstyle ':vcs_info:*' unstagedstr '*'
# zstyle ':vcs_info:*' stagedstr '+'
# zstyle ':vcs_info:git:*' formats '%F{200}[%b%u%c]%f'
# zstyle ':vcs_info:*' enable git

# PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%~%b $vcs_info_msg_0_ $ '
