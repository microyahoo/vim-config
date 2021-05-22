"********************************************************
"                        Vundle配置                     *
"********************************************************
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=/home/admin/.fzf
" set rtp+=/usr/local/opt/fzf
call plug#begin('~/.vim/plugged')
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'benmills/vimux'
Plug 'luochen1990/rainbow'
" Plug 'VundleVim/Vundle.vim'
Plug 'fatih/vim-go'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-repeat'
Plug 'mdempsky/gocode', {'rtp': 'nvim/'}
Plug 'preservim/nerdtree'
Plug 'mileszs/ack.vim'
" Plug 'SirVer/ultisnips'
Plug 'majutsushi/tagbar'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'kien/tabman.vim'
Plug 'tpope/vim-fugitive'
Plug 'chase/vim-ansible-yaml'
Plug 'tmhedberg/SimpylFold'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'nvie/vim-flake8'
Plug 'vim-scripts/Pydiction'
Plug 'vim-scripts/indentpython.vim'
Plug 'scrooloose/syntastic'
Plug 'davidhalter/jedi-vim'
Plug 'Chiel92/vim-autoformat'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'neoclide/coc.nvim'
call plug#end()

"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

" let Vundle manage Vundle, required
" Plugin 'mdempsky/gocode', {'rtp': 'vim/'}
" Plugin 'nsf/gocode', {'rtp': 'vim/'}
" Bundle 'FuzzyFinder'
" Plugin 'plasticboy/vim-markdown'
"python syntax checker

" All of your Plugins must be added before the following line
" call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"*****************************************************
"           FuzzyFinder配置                          *
"*****************************************************
nnoremap <silent> <F4> :call fuf#givencmd#launch('', 0, '选择命令>', g:fuf_com_list)<CR>
 let mapleader = "\\"
 map <leader>F :FufFile<CR>
 map <leader>f :FufTaggedFile<CR>
 map <leader>g :FufTag<CR>
 map <leader>b :FufBuffer<CR>
 nnoremap <silent> sk     :FufFileWithCurrentBufferDir<CR>


"********************************************************
"                      NERD_Tree 配置                   *
"********************************************************
"显示增强
let NERDChristmasTree=1
"自动调整焦点
let NERDTreeAutoCenter=1
"鼠标模式:目录单击,文件双击
let NERDTreeMouseMode=2
"打开文件后自动关闭
let NERDTreeQuitOnOpen=0
"显示文件
let NERDTreeShowFiles=1
"显示隐藏文件
let NERDTreeShowHidden=0
"高亮显示当前文件或目录
let NERDTreeHightCursorline=1
"显示行号
let NERDTreeShowLineNumbers=1
"窗口位置
let NERDTreeWinPos='left'
"窗口宽度
let NERDTreeWinSize=31
"不显示'Bookmarks' label 'Press ? for help'
let NERDTreeMinimalUI=1
"ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$'] 
"快捷键
nnoremap <silent> <F2> :NERDTreeToggle<CR>
"当打开vim且没有文件时自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
"只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" open a NERDTree automatically when vim starts up
"autocmd vimenter * NERDTree
"open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"close vim if the only window left open is a NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"********************************************************
"                        Tagbar配置                     *
"********************************************************
let g:tagbar_width=35
let g:tagbar_autofocus=1
let g:tagbar_left = 0
nmap <F3> :TagbarToggle<CR>

"********************************************************
"                        Ack配置                     *
"********************************************************

"********************************************************
"                        Rainbow配置                     *
"********************************************************
let g:rainbow_active = 1
let g:rainbow_conf = {
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}

"********************************************************
"                        Vim Tmux Navigator配置                     *
"********************************************************
" https://github.com/christoomey/vim-tmux-navigator
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-x> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

"********************************************************
"                        ctrlp配置                     *
"********************************************************
"" CtrlP settings
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_switch_buffer='et'

let g:ctrlp_show_hidden=1
let g:ctrlp_working_path_mode='a'
let g:ctrlp_custom_ignore={
    \ 'file': '\v\.(pyc|pyo)$',
    \ 'dir': '\v[\/]\.(git|hg|svn|tox)|vendor|_site$',
    \ }
" nmap <C-b> :CtrlPBuffer<CR>

"********************************************************
"                        Others配置                     *
"********************************************************
set tabstop=4
set shiftwidth=4
set ruler
set nu
set showcmd
set foldenable
set cul

set showcmd         " 输入的命令显示出来，看的清楚些
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容
set softtabstop=4
set expandtab
set backspace=indent,eol,start
" set mouse=a
"设置历史记录条数
set history=2000
"设置取消备份 禁止临时文件的生成
set nobackup
set noswapfile
set hlsearch
set incsearch
" 高亮显示匹配的括号

"set an 100 column boarder
set cc=100

" set paste
set showmatch
syntax enable
syntax on

colorscheme molokai

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" https://github.com/j1z0/vim-config/blob/master/vimrc
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

"Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.go match BadWhitespace /\s\+$/

" autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

set tags=tags
"set autochdir This will lead cscope 'file does not exist'
map <F12> :!ctags -R .<CR>
map <F11> :!cscope -Rbq <CR>

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
" let g:go_def_mode='godef'
" let g:go_info_mode='gocode'
set rtp+=$GOPATH/src/golang.org/x/lint/misc/vim
autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

" if executable('gopls')
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'gopls',
"         \ 'cmd': {server_info->['gopls', '-mode', 'stdio']},
"         \ 'whitelist': ['go'],
"         \ })
"     autocmd BufWritePre *.go LspDocumentFormatSync
" endif

" let g:go_metalinter_command='golangci-lint'
" let g:go_metalinter_autosave = 1
" let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
" let g:go_metalinter_autosave = 1
" let g:go_metalinter_autosave_enabled = ['vet', 'golint']
" let g:go_metalinter_deadline = "5s"
" let g:go_auto_type_info = 1
" let g:go_auto_sameids = 1
" let g:go_highlight_types = 1
" let g:go_highlight_fields = 1
" let g:go_highlight_generate_tags = 1

" let g:go_highlight_functions = 1
" let g:go_highlight_function_calls = 1
" let g:go_textobj_include_function_doc = 1
" let g:go_decls_includes = "func,type"

autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:python3_host_prog = '/usr/bin/python'
" let g:python3_host_prog = $HOME .'/ENV_3.7.6/bin/python'
" To disable Python 2 support
let g:loaded_python_provider = 0
let g:UltiSnipsUsePythonVersion = 3

let g:loaded_clipboard_provider = 1

