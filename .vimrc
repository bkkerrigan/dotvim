let installVundle = 1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
	echo "Installing Vundle.."
	echo ""

	silent !mkdir -p ~/.vim/bundle
	silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
	let installVunle=0
endif

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'rkulla/pydiction'

if(installVundle == 0)
	echo "Installing Bundles"
	echo ""
	:BundleInstall
endif
filetype on
filetype plugin indent on
syntax on
