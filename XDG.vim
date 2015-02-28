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
" 1. Create the following directory structure:
"
" - $XDG_CACHE_HOME/vim
" - $XDG_CACHE_HOME/vim/undo
" - $XDG_CACHE_HOME/vim/swap
" - $XDG_CACHE_HOME/vim/backup
" - $XDG_CONFIG_HOME/vim
"
" Example commands:
" `mkdir -p $XDG_CACHE_HOME/vim/{undo,swap,backup} $XDG_CONFIG_HOME/vim` or
" `mkdir -p $HOME/.cache/vim/{undo,swap,backup} " $HOME/.config`.
"
" 2. Source this file from the top of your vimrc.
" 3. (Optional) vim still tries to read your vimrc from standard paths, so if
"    you want to move it elsewhere (e.g. $XDG_CONFIG_HOME/vim/vimrc), you can
"    do oneof of two things:
"       3a. Always run vim using "vim -u <path_to_vimrc>".
"       3b. Set the environment variable VIMINIT to "source <path_to_vimrc>"
"           (the content of VIMINIT can be any ex command).

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
