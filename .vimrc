" ******************************************************************************
" Script Name: .vimrc
" Description: The configuration file for the Vim text editor.
" Author: makamat
" Date: 2024-03-27
" Version: 1.0
" ******************************************************************************

" ------------------------------------------------------------------------------
" Plugins
" ------------------------------------------------------------------------------

" Plugin Name: vim-plug
" Author: Junegunn Choi
" Website: https://github.com/junegunn/vim-plug
" Description: Minimalist Vim plugin manager with asynchronous installation 
" and updates, providing a simple and efficient way to manage plugins.
" 
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
let url = 
    \ ' https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs'.url
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" ------------------------------------------------------------------------------

call plug#begin()







Plug 'digitaltoad/vim-jade'

autocmd FileType javascript,typescript iabbrev ct const
autocmd FileType javascript,typescript iabbrev lt let
autocmd FileType javascript,typescript autocmd BufWritePre <buffer> :Prettier

iabbrev strign string
iabbrev Strign String




autocmd FileType ruby set shiftwidth=4
autocmd FileType ruby set tabstop=4





    " Plugin Name: vim-sneak
    " Author: Justin M. Keyes 
    " Website: https://github.com/justinmk/vim-sneak
    " Description: Enhances navigation by enabling quick jumps to specific 
    " character sequences within the current view.
    " 
    Plug 'justinmk/vim-sneak'
" ------------------------------------------------------------------------------

    " Plugin Name: vim-submode
    " Author: Kana Natsuno 
    " Website: https://github.com/thinca/vim-submode
    " Description: Allows for the creation of custom submodes within Vim, 
    " enabling more granular and context-aware editing actions.
    "
    Plug 'kana/vim-submode'
" ------------------------------------------------------------------------------

    " Plugin Name: emmet-vim
    " Author: Yasuhiro Matsumoto
    " Website: https://github.com/mattn/emmet-vim
    " Description: This plugin enables fast HTML and CSS coding using 
    " Emmet-style shortcuts.
    "
    Plug 'mattn/emmet-vim'
" ------------------------------------------------------------------------------

    " Plugin Name: ultisnips
    " Author: Holger Rapp
    " Website: https://github.com/SirVer/ultisnips
    " Description: It's a snippet management plugin that simplifies inserting 
    " frequently used code constructs through auto-completion.
    "
    Plug 'SirVer/ultisnips'
" ------------------------------------------------------------------------------

    " Plugin Name: vim-snippets
    " Author: https://github.com/honza/vim-snippets/blob/master/AUTHORS
    " Website: https://github.com/honza/vim-snippets
    " Description: An extension containing sets of pre-made code snippets for 
    " various programming languages, compatible with the UltiSnips plugin.
    "
    Plug 'honza/vim-snippets'
" ------------------------------------------------------------------------------

    " Plugin Name: vim-instant-markdown
    " Author: Suan-Aik Yeo (creator), Ashwin Vishnu (maintainer)
    " Website: https://github.com/instant-markdown/vim-instant-markdown
    " Description: Allows real-time preview of Markdown formatting.
    "
    Plug 'instant-markdown/vim-instant-markdown', {
        \    'for': 'markdown', 'do': 'yarn install' }
" ------------------------------------------------------------------------------

    " Plugin Name: vimtex
    " Author: Karl Yngve Lervåg
    " Website: https://github.com/lervag/vimtex
    " Description: Provides support for writing and compiling LaTeX documents 
    " within Vim.
    "
    Plug 'lervag/vimtex'
" ------------------------------------------------------------------------------

    " Plugin Name: vim-jsx
    " Author: Max Wang
    " Website: https://github.com/mxw/vim-jsx
    " Description: Enhances JSX (JavaScript XML) syntax highlighting 
    " and editing capabilities in Vim.
    "
    Plug 'mxw/vim-jsx'
" ------------------------------------------------------------------------------

    " Plugin Name: vim-asm-indent
    " Author: Philip Jones
    " Website: https://github.com/philj56/vim-asm-indent
    " Description: Helps with indenting assembly language code in Vim.
    "
    Plug 'philj56/vim-asm-indent'
" ------------------------------------------------------------------------------

    " Plugin Name: nerdcommenter 
    " Author: David Dollar
    " Website: https://github.com/ddollar/nerdcommenter
    " Description: Simplifies commenting and uncommenting code in various 
    " programming languages.
    "
    Plug 'scrooloose/nerdcommenter'
" ------------------------------------------------------------------------------

    " Plugin Name: nerdtree
    " Author: Sam Hocevar
    " Website: https://github.com/preservim/nerdtree
    " Description: A file system explorer plugin for Vim.
    "
    Plug 'preservim/nerdtree'
" ------------------------------------------------------------------------------

    " Plugin Name: youcompleteme
    " Author: ycm-core
    " Website: https://github.com/ycm-core/YouCompleteMe
    " Description: Offers fast code completion capabilities in Vim for various 
    " programming languages.
    "
    Plug 'ycm-core/youcompleteme'
" ------------------------------------------------------------------------------

    " Plugin Name: vim-airline
    " Author: Bailey Ling, Christian Brabandt, et al
    " Website: https://github.com/vim-airline/vim-airline
    " Description: A lightweight status/tabline plugin for Vim that displays 
    " essential information about the current buffer and editing session.
    "
    Plug 'vim-airline/vim-airline'
" ------------------------------------------------------------------------------

    " Plugin Name: django.vim
    " Author: Dave Hodder
    " Website: https://github.com/vim-scripts/django.vim
    " Description: Provides syntax highlighting and other utilities for working 
    " with Django framework templates and files.
    "
    Plug 'vim-scripts/django.vim'
" ------------------------------------------------------------------------------

    " Plugin Name: vim-easymotion
    " Author: Kim Silkebækken
    " Website: https://github.com/easymotion/vim-easymotion
    " Description: Allows for quick and efficient movement within Vim by 
    " providing easy-to-use motion shortcuts.
    "
    Plug 'easymotion/vim-easymotion'
" ------------------------------------------------------------------------------

    " Plugin Name: vim-prettier
    " Author: Mitermayer Reis
    " Website: https://github.com/prettier/vim-prettier
    " Description: Integrates with the Prettier code formatter, providing 
    " automatic code formatting for various programming languages.
    "
    " post install (yarn install | npm install) then load plugin only 
    " for editing supported files.
    Plug 'prettier/vim-prettier', {
        \ 'do': 'yarn install --frozen-lockfile --production',
        \ 'for': [ 
        \     'javascript', 'typescript', 'css', 'less', 'scss', 'json', 
        \     'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
" ------------------------------------------------------------------------------
call plug#end()

" ------------------------------------------------------------------------------
" Variables
" ------------------------------------------------------------------------------

" Global
" ==============================================================================

let mapleader = ','
let localleader = '\\'

" vim-instant-markdown
" ==============================================================================

"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_mermaid = 1
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1
"let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
let g:instant_markdown_browser = "firefox-developer-edition --new-window"
let g:instant_markdown_theme = 'dark'

" vim-airline
" ==============================================================================
 
let g:airline#extensions#tabline#enabled = 1

" ultisnips
" ==============================================================================
 
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsJumpForwardTrigger='<c-m>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips', 'vim-snippets']

" vimtex
" ==============================================================================
 
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
let g:vimtex_view_method='zathura'

" youcompleteme
" ==============================================================================
 
let g:ycm_language_server =
  \ [
  \   {
  \     'name': 'texlab',
  \     'cmdline': [ 'texlab' ],
  \     'filetypes': [ 'tex' ]
  \   },
  \   {
  \     'name': 'ccls',
  \     'cmdline': [ 'ccls' ],
  \     'filetypes': [ 'c', 'cpp', 'cuda', 'objc', 'objcpp' ],
  \     'project_root_files': [ '.ccls-root', 'compile_commands.json' ]
  \   },
  \   {
  \     'name': 'vim-language-server',
  \     'cmdline': [ 'vim-language-server', '--stdio' ],
  \     'filetypes': [ 'vim' ]
  \   },
  \   {
  \     'name': 'bash',
  \     'cmdline': [ 'bash-language-server', 'start' ],
  \     'filetypes': [ 'sh' ]
  \   },
  \   {
  \     'name': 'css',
  \     'cmdline': [ 'vscode-css-language-server', '--stdio' ],
  \     'filetypes': [ 'css', 'scss', 'less', 'sass' ]
  \   },
  \ ]

" ------------------------------------------------------------------------------
" Options
" ------------------------------------------------------------------------------

filetype plugin indent on
syntax enable

set encoding=utf-8
set expandtab
set mouse=a
set shiftwidth=4
set tabstop=4
set textwidth=80
set wildmenu
set wrap

" ------------------------------------------------------------------------------
" Autocommands
" ------------------------------------------------------------------------------

" All
" ==============================================================================

" Jump to the Location of the Last Edit
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | 
    \ execute "normal! g'\"" | endif
 
" c, c++
" ==============================================================================

augroup c_cpp_autocmds
    " Place a Word Between '<' and '>'
    autocmd FileType c,cpp 
        \ nnoremap <buffer> <leader>< viw<esc>a><esc>bi<<esc>lel

    " Automatic Code Formatting on Save
    autocmd FileType c,cpp autocmd BufWritePost <buffer> silent execute 
        \ '!clang-format -i ' . expand('%') | silent edit!

    " Automatic Compilation on Save
"    autocmd FileType c,cpp autocmd BufWritePost <buffer> silent execute 
"        \ '!gcc % -o %<'
augroup END

" css, scss
" ==============================================================================

augroup css_scss
    " Automatic Code Formatting on Save
    autocmd FileType scss,css autocmd BufWritePre <buffer> :Prettier
augroup END

" mutt
" ==============================================================================

" Setting Text Width for Mutt Emails
au BufRead /tmp/*mutt-* set tw=80

augroup mail
  " Filetype Detection for Mutt Emails
  autocmd BufRead,BufNewFile *mutt-* setfiletype mail
augroup END

" markdown
" ==============================================================================

autocmd FileType markdown nnoremap <leader>c :InstantMarkdownPreview<cr>

" tex
" ==============================================================================

autocmd FileType tex nnoremap <leader>c :VimtexCompile<cr>

" javascript
" ==============================================================================

autocmd FileType javascript nnoremap <buffer> <leader>c :call RunNode()<CR>

function! RunNode()
    let l:file = expand('%')
    let l:cmd = 'node ' . l:file
    execute '!'.l:cmd
endfunction

" HTML
" ==============================================================================

autocmd FileType html autocmd BufWritePre <buffer> :Prettier






autocmd FileType html,css inoremap <buffer> <c-u> <esc>:Emmet 


" ------------------------------------------------------------------------------
" Mappings
" ------------------------------------------------------------------------------

" Insert Mode 
" ==============================================================================

" delete the current line
inoremap <c-d> <esc>ddi

" make an indent
inoremap <c-l> <tab>

" disable escape
inoremap <esc> <nop>

" exit input mode
inoremap jk <esc>

" surround the preceding word with quotation marks.
inoremap q" <esc>bi"<esc>ea"

" Normal Mode 
" ==============================================================================

" swap the current line with the line below
nnoremap <c-s-j> ddp

" swap the current line with the line above
nnoremap <c-s-k> ddkP

" delete the current line
nnoremap - dd

" delete the current buffer 
nnoremap <c-d> :bdelete<cr>

" toggle directory tree
nnoremap <c-l> :NERDTreeToggle<cr>

" convert to uppercase 
nnoremap <c-u> <esc>bveU

" surround the word under the cursor with double quotes  
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

" surround the word under the cursor with single quotes  
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

" edit bash aliases
nnoremap <leader>eba :call OpenFile('.bash_aliases')<cr>

" edit i3
nnoremap <leader>ei3 :call OpenFile('.config/i3/config')<cr>

" edit mimeapps
nnoremap <leader>emi :call OpenFile('.config/mimeapps.list')<cr>

" edit muttrc
nnoremap <leader>emu :call OpenFile('.muttrc')<cr>

" edit qutebrowser
nnoremap <leader>eq :call OpenFile('.config/qutebrowser/config.py')<cr>

" edit sshd
nnoremap <leader>esdc :call OpenFile('/etc/ssh/sshd_config')<cr>

" edit ssh config
nnoremap <leader>esh :call OpenFile('.ssh/config')<cr>

" edit tmux
nnoremap <leader>et :call OpenFile('.tmux.conf')<cr>

" edit vimrc
nnoremap <leader>ev :call OpenFile('.vimrc')<cr>

" edit vifmrc
nnoremap <leader>evf :call OpenFile('.config/vifm/vifmrc')<cr>

" edit zshrc
nnoremap <leader>ez :call OpenFile('.zshrc')<cr>

" markdown preview
nnoremap <leader>mdp :InstantMarkdownPreview<cr>

" refresh vim
nnoremap <leader>rv :source $MYVIMRC<cr>

" select a word
nnoremap <space> viw

" move cursor to the beginning of a line
nnoremap H ^

" move cursor to the end of a line
nnoremap L $

" go buffer next
nnoremap gbn :bnext<cr>

" go buffer prev
nnoremap gbp :bprevious<cr>

" ------------------------------------------------------------------------------
" Abbreviations
" ------------------------------------------------------------------------------


" ------------------------------------------------------------------------------
" Functions 
" ------------------------------------------------------------------------------

" open file
function! OpenFile(f)
    execute 'vsplit' expand('$HOME').'/' . a:f
endfunction
