###########
# 履歴
###########
# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zhistory
# メモリに保存される履歴の件数
export HISTSIZE=1000
# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000
# 重複を記録しない
setopt hist_ignore_dups
###########

###########
# zplug
source ~/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure"
# 構文のハイライト(https://github.com/zsh-users/zsh-syntax-highlighting)
zplug "zsh-users/zsh-syntax-highlighting"
# history関係
zplug "zsh-users/zsh-history-substring-search"
# タイプ補完
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
# 螻･豁ｴ
###########
# 螻･豁ｴ繝輔ぃ繧､繝ｫ縺ｮ菫晏ｭ伜��
export HISTFILE=${HOME}/.zhistory
# 繝｡繝｢繝ｪ縺ｫ菫晏ｭ倥＆繧後ｋ螻･豁ｴ縺ｮ莉ｶ謨ｰ
export HISTSIZE=1000
# 螻･豁ｴ繝輔ぃ繧､繝ｫ縺ｫ菫晏ｭ倥＆繧後ｋ螻･豁ｴ縺ｮ莉ｶ謨ｰ
export SAVEHIST=100000
# 驥崎､�繧定ｨ倬鹸縺励↑縺�
setopt hist_ignore_dups
###########

###########
# zplug
source 窶ｾ/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure"
# 讒区枚縺ｮ繝上う繝ｩ繧､繝�(https://github.com/zsh-users/zsh-syntax-highlighting)
zplug "zsh-users/zsh-syntax-highlighting"
# history髢｢菫�
zplug "zsh-users/zsh-history-substring-search"
# 繧ｿ繧､繝苓｣懷ｮ�
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

