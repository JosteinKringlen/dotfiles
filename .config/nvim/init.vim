"Vim plugins
call plug#begin()
Plug 'altercation/vim-colors-solarized' "Solarized plugin
Plug 'lervag/vimtex'			"Latex plugin
Plug 'scrooloose/nerdtree'		"Nerdtree file browser plugin
Plug 'sirver/ultisnips'			"Snippets plugin
Plug 'christoomey/vim-tmux-navigator'	"Navigate panes in tmux
Plug 'tmux-plugins/vim-tmux'		"Tmux syntax highlighting
Plug 'kien/ctrlp.vim'			"Fuzzy finding
"Plug 'pangloss/vim-javascript'		"Javascript highlighinn
"Plug 'mxw/vim-jsx'			"Jsx (react) highlighting
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'raimondi/delimitmate'		"Autoclose matching brackets
Plug 'valloric/youcompleteme'
"Plug 'scrooloose/syntastic'
Plug 'marijnh/tern_for_vim'
Plug 'alvan/vim-closetag'
"Plug 'jelera/vim-javascript-syntax'
"Plug 'othree/javascript-libraries-syntax.vim'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-surround'
"Plug 'artur-shaik/vim-javacomplete2'
"Plug 'udalov/kotlin-vim'

call plug#end()

set number relativenumber 				"Enable line numbers
set scrolloff=4
filetype plugin indent on 		"Enable filetype recognition
syntax on 				"Enable syntax highlighting
set encoding=utf-8 			"Set utf-8 encoding
set autoindent				"Use same indentation as last line
set softtabstop=4			"Use 4 spaces as tab
set shiftwidth=4			"Amount of spaces used when autoindenting
set ruler				"Show ruler in bottom right corner
set ignorecase				"Ignore case when searching
set smartcase				"Override ignorecase when searching with case
set complete=.,w,b,u,t,i,kspell		"Improve completion. (All is default except kspell)
set mouse=a
map 0 ^
map + $

let g:jsx_ext_required = 0
let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.js'

inoremap jk <ESC>			"Map esc to jk
let mapleader = "\<Space>"		"Space is leader button
let maplocalleader = "\<Space>"		"Space is also local leader button
nnoremap j gj				"Enable moving down within a line
nnoremap k gk				"Enable moving up within a line
cmap w!! w !sudo tee > /dev/null %	"w!! to save as sudo

"Delete everything in the document
nmap <leader>da :1,$d<CR>

"YCM settings

let g:Show_diagnostics_ui = 0
let g:ycm_enable_diagnostic_highlighting = 0


nnoremap <C-J> <C-W><C-J>		"Easier navigation between window spilts
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Nerdtree
nmap <C-n> :NERDTreeToggle<CR>		"Toggle file browser
let g:NERDTreeWinSize = 20		"Set size of file browser

"Appearance
colorscheme solarized			"Set solarized color scheme
set background=dark			"Set dark background color

"Latex
let g:tex_flavor = 'latex'		"Handle .tex files with latex
"let g:vimtex_view_method = 'zathura'	"View pdf in Zathura
"let g:vimtex_view_method = 'mupdf'

let g:vimtex_compiler_latexmk = {
\   'build_dir' : './build',	
\}

"UltiSnips
let g:UltiSnipsExpandTrigger = "<C-J>"
let g:UltiSnipsJumpForwardTrigger = "<C-b>"
let g:UltiSnipsJumpBackwardTrigger = "<C-z>"

"let g:UltiSnipsSnippetsDir = '~/.config/nvim/ultisnips'
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/plugged/ultisnips']
let g:UltiSnipsEditSplit = 'horizontal'

"Abbreviations
ab exmaple example
ab techonology technology
ab techonoloy technology
ab techonolgy technology


"JS-Libraries
"let g:used_javascript_libs = 'jquery,react'
