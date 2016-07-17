"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim-go-runtime/plugged')

" Mandatory
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'ctrlpvim/ctrlp.vim'

" Golang
Plug 'fatih/vim-go', {'for': 'go'}  " THE go plugin
Plug 'SirVer/ultisnips'             " For awesome go snippets

" Important
Plug 'tpope/vim-fugitive'           " Git integration
Plug 'tomtom/tcomment_vim'          " Commenting made easy
Plug 'scrooloose/nerdtree'          " File tree
Plug 'Raimondi/delimitMate'         " Auto-close brackets
Plug 'rking/ag.vim'                 " For silver surfing
Plug 'majutsushi/tagbar'            " Tagbar
Plug 'ap/vim-buftabline'            " Buffer bar

" Nice to have
Plug 'itchyny/lightline.vim'        " Statusline
Plug 'flazz/vim-colorschemes', { 'do': 'ln -s ~/.vim-go-runtime/plugged/vim-colorschemes/colors ~/.vim/colors' }
Plug 'fatih/molokai'                " Fatih's molokai theme
Plug 'mhinz/vim-sayonara'           " Kill buffer without closing window

call plug#end()

set nocompatible                    " iMproved, required
filetype off                        " Required
filetype plugin indent on           " Required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"
" Neocomplete
"
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.go = '[^.[:digit:] *\t]\.\w*'

"
" Ctrlp
"
map <Leader>j :CtrlPBuffer<cr>
let g:ctrlp_working_path_mode = 1
let g:ctrlp_map = '<c-f>'
let g:ctrlp_max_height = 10
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_extensions = ['tag', 'buffertag']
let g:ctrlp_buftag_types = {
            \ 'go'           : '--language-force=go --golang-types=ftv',
            \ 'markdown'   : '--language-force=markdown --markdown-types=hik',
            \ }

nmap <C-d> :CtrlPBufTag<CR>

"
" Vim-Go
"
let g:go_fmt_fail_silently = 0
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_snippet_case_type = "camelcase"

let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>r <Plug>(go-run)
au FileType go nmap <Leader>b <Plug>(go-build)
au FileType go nmap <Leader>d <Plug>(go-doc)
au FileType go nmap <Leader>f <Plug>(go-def)
au FileType go nmap <Leader>t <Plug>(go-test)
au FileType go nmap <Leader>l :GoLint<CR>
au FileType go nmap <Leader>e <Plug>(go-rename)
au FileType go map <Leader>p :GoPlay<CR>

"
" Nerdtree
"
map <Leader>n :NERDTreeToggle<CR>
let g:NERDTreeWinSize=34

"
" DelimitMate
"
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
let g:delimitMate_smart_quotes = 1
let g:delimitMate_expand_inside_quotes = 0
let g:delimitMate_smart_matchpairs = '^\%(\w\|\$\)'

"
" Tagbar
"
nmap <Leader>m :TagbarToggle<CR>
let g:tagbar_width = 34
let g:tagbar_type_go = {
            \ 'ctagstype' : 'go',
            \ 'kinds'     : [
            \ 'p:package',
            \ 'i:imports:1',
            \ 'c:constants',
            \ 'v:variables',
            \ 't:types',
            \ 'n:interfaces',
            \ 'w:fields',
            \ 'e:embedded',
            \ 'm:methods',
            \ 'r:constructor',
            \ 'f:functions'
            \ ],
            \ 'sro' : '.',
            \ 'kind2scope' : {
            \ 't' : 'ctype',
            \ 'n' : 'ntype'
            \ },
            \ 'scope2kind' : {
            \ 'ctype' : 't',
            \ 'ntype' : 'n'
            \ },
            \ 'ctagsbin'  : 'gotags',
            \ 'ctagsargs' : '-sort -silent'
            \ }

