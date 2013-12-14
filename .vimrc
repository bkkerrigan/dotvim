set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'rkulla/pydiction'


filetype plugin indent on
autocmd Filetype py source ~/.vim/py.vim
