###########
# —š—ğ
###########
# —š—ğƒtƒ@ƒCƒ‹‚Ì•Û‘¶æ
export HISTFILE=${HOME}/.zhistory
# ƒƒ‚ƒŠ‚É•Û‘¶‚³‚ê‚é—š—ğ‚ÌŒ”
export HISTSIZE=1000
# —š—ğƒtƒ@ƒCƒ‹‚É•Û‘¶‚³‚ê‚é—š—ğ‚ÌŒ”
export SAVEHIST=100000
# d•¡‚ğ‹L˜^‚µ‚È‚¢
setopt hist_ignore_dups
###########

###########
# zplug
source ~/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure"
# \•¶‚ÌƒnƒCƒ‰ƒCƒg(https://github.com/zsh-users/zsh-syntax-highlighting)
zplug "zsh-users/zsh-syntax-highlighting"
# historyŠÖŒW
zplug "zsh-users/zsh-history-substring-search"
# ƒ^ƒCƒv•âŠ®
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "chrissicool/zsh-256color"
# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
# Then, source plugins and add commands to $PATH
zplug load
###########

alias ls=exa
alias cat=bat

###########
# å±¥æ­´
###########
# å±¥æ­´ãƒ•ã‚¡ã‚¤ãƒ«ã®ä¿å­˜å…ˆ
export HISTFILE=${HOME}/.zhistory
# ãƒ¡ãƒ¢ãƒªã«ä¿å­˜ã•ã‚Œã‚‹å±¥æ­´ã®ä»¶æ•°
export HISTSIZE=1000
# å±¥æ­´ãƒ•ã‚¡ã‚¤ãƒ«ã«ä¿å­˜ã•ã‚Œã‚‹å±¥æ­´ã®ä»¶æ•°
export SAVEHIST=100000
# é‡è¤‡ã‚’è¨˜éŒ²ã—ãªã„
setopt hist_ignore_dups
###########

###########
# zplug
source â€¾/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure"
# æ§‹æ–‡ã®ãƒã‚¤ãƒ©ã‚¤ãƒˆ(https://github.com/zsh-users/zsh-syntax-highlighting)
zplug "zsh-users/zsh-syntax-highlighting"
# historyé–¢ä¿‚
zplug "zsh-users/zsh-history-substring-search"
# ã‚¿ã‚¤ãƒ—è£œå®Œ
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "chrissicool/zsh-256color"
# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
# Then, source plugins and add commands to $PATH
zplug load
###########

alias ls=exa
alias cat=bat

