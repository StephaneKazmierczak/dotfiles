set t_Co=256
set background=dark
set termguicolors
source /usr/share/doc/fzf/examples/fzf.vim

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', {'as':'dracula'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
call plug#end() 

let g:dracula_colorterm = 0
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '|'


let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>


colorscheme dracula
