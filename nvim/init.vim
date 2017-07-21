set nocompatible
set ignorecase
set smartcase

autocmd ColorScheme * highlight SignColumn ctermbg=None ctermfg=None

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'

Plugin 'MarcWeber/vim-addon-local-vimrc'

"Plugin 'gtags.vim'
Plugin 'whatot/gtags-cscope.vim'

"Plugin 'Tabular'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Use Powerline fonts
let g:airline_powerline_fonts = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Deoplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Shougo/deoplete.nvim'
" Activate deoplete by default
let g:deoplete#enable_at_startup = 1
autocmd ColorScheme * highlight Pmenu ctermbg=188
autocmd ColorScheme * highlight PmenuSel ctermbg=235 ctermfg=White
autocmd ColorScheme * highlight PmenuSbar ctermbg=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Tagbar'
let g:go_auto_type_info = 1
let g:tagbar_left = 1
nmap <F8> :TagbarToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bookmarks
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'MattesGroeger/vim-bookmarks'
let g:bookmark_auto_close = 1

"let g:bookmark_highlight_lines = 1
autocmd ColorScheme * highlight BookmarkSign ctermbg=None ctermfg=Yellow
autocmd ColorScheme * highlight BookmarkAnnotationSign ctermbg=None ctermfg=Green
autocmd ColorScheme * highlight BookmarkLine ctermbg=Yellow ctermfg=None
autocmd ColorScheme * highlight BookmarkAnnotationLine ctermbg=Green ctermfg=None

" After all plugins...
call vundle#end()

filetype plugin indent on

" GTAGS
let cscopeprg = 'gtags-cscope'
let Gtags_OpenQuickfixWindow = 0
let GtagsCscope_Auto_Map = 1
"let GtagsCscope_Ignore_Case = 1
let GtagsCscope_Absolute_Path = 1
let GtagsCscope_Auto_Load = 1
let GtagsCscope_Use_Old_Key_Map = 1

colorscheme elflord

set fillchars+=vert:│
autocmd ColorScheme * highlight VertSplit cterm=NONE ctermfg=White ctermbg=NONE

set clipboard+=unnamedplus
