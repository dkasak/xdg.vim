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
" The following directory structure must exist if you want VIM to actually use
" them, e.g.
" `mkdir -p $XDG_CACHE_HOME/vim/{undo,swap,backup} $XDG_CONFIG_HOME/vim` or
" `mkdir -p $HOME/.cache/vim/{undo,swap,backup} " $HOME/.config`.
"
" - $XDG_CACHE_HOME/vim
" - $XDG_CACHE_HOME/vim/undo
" - $XDG_CACHE_HOME/vim/swap
" - $XDG_CACHE_HOME/vim/backup
" - $XDG_CONFIG_HOME/vim
"
" Source this file from the top of your vimrc. vim still tries to read your
" vimrc at the path ~/.vimrc so if you want to move that too, you'll have to run
" vim with ```vim -u <path_to_vimrc>```.

if empty("$XDG_CACHE_HOME")
    let $XDG_CACHE_HOME="$HOME/.cache"
endif
if empty("$XDG_CONFIG_HOME")
    let $XDG_CONFIG_HOME="$HOME/.config"
endif
set directory=$XDG_CACHE_HOME/vim/swap,~/,/tmp
set backupdir=$XDG_CACHE_HOME/vim/backup,~/,/tmp
set undodir=$XDG_CACHE_HOME/vim/undo,~/,/tmp
set viminfo+='100,n$XDG_CACHE_HOME/vim/viminfo
set runtimepath=$XDG_CONFIG_HOME/vim,$XDG_CONFIG_HOME/vim/after,$VIM,$VIMRUNTIME
let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc"
