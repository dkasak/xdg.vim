" XDG Environment For VIM
" =======================
"
" References
" ----------
"
" - http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html#variables
" - http://tlvince.com/vim-respect-xdg
"
" Instructions
" ------------
"
" The following two (2) directories must exist if you want VIM to actually
" use them, e.g. `mkdir $XDG_CACHE_HOME/vim $XDG_CONFIG_HOME/vim` or
" `mkdir $HOME/.cache/vim $HOME/.config`.
"
" - $XDG_CACHE_HOME/vim
" - $XDG_CONFIG_HOME/vim

if empty($XDG_CACHE_HOME)
    let $XDG_CACHE_HOME="$HOME/.cache"
endif
if empty($XDG_CONFIG_HOME)
    let $XDG_CONFIG_HOME="$HOME/.config"
endif
set directory=$XDG_CACHE_HOME/vim,~/,/tmp
set backupdir=$XDG_CACHE_HOME/vim,~/,/tmp
set viminfo+=n$XDG_CACHE_HOME/vim/viminfo
set runtimepath=$XDG_CONFIG_HOME/vim,$XDG_CONFIG_HOME/vim/after,$VIM,$VIMRUNTIME
let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc"
