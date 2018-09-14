set -x PATH /home/linuxbrew/.linuxbrew/bin $PATH
set -x PATH $HOME/go/bin $PATH
set -x PATH $HOME/.cargo/bin $PATH
set -x PATH $HOME/.plenv/bin $PATH
set -x LD_LIBRARY_PATH /home/linuxbrew/.linuxbrew/lib $LD_LIBRARY_PATH
set -x DISPLAY localhost:0.0

alias ls exa
alias cat bat

set -gx PATH ~/.plenv/bin $PATH
. (plenv init - | psub)
