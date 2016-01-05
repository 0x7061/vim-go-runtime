"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim-go-runtime/plugged')

" Mandatory
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --gocode-completer' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'xolox/vim-misc'               " Dependency for session
Plug 'xolox/vim-session'            " Session management

" Golang
Plug 'fatih/vim-go', {'for': 'go'}  " THE go plugin
Plug 'garyburd/go-explorer'         " For GoDoc
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
Plug 'mhinz/vim-sayonara'           " Kill buffer without closing window

call plug#end()

set nocompatible                    " iMproved, required
filetype off                        " Required
filetype plugin indent on           " Required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"
" You-Complete-Me
"
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 1
" Better Completion
set complete=.,w,b,u,t
set completeopt=longest,menuone

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

let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>r <Plug>(go-run)
au FileType go nmap <Leader>b <Plug>(go-build)
au FileType go nmap <Leader>d <Plug>(go-doc)
au FileType go nmap <Leader>f <Plug>(go-def)

"
" Nerdtree
"
map <Leader>n :NERDTreeToggle<CR>
let g:NERDTreeWinSize=34

"
" Ultisnips
"
function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
                return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

function! g:UltiSnips_Reverse()
    call UltiSnips#JumpBackwards()
    if g:ulti_jump_backwards_res == 0
        return "\<C-P>"
    endif

    return ""
endfunction

if !exists("g:UltiSnipsJumpForwardTrigger")
    let g:UltiSnipsJumpForwardTrigger = "<tab>"
endif

if !exists("g:UltiSnipsJumpBackwardTrigger")
    let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
endif

au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsJumpBackwardTrigger . " <C-R>=g:UltiSnips_Reverse()<cr>"

"
" Vim-Session
"
let g:session_autosave = 'yes'
let g:session_autoload = 'yes'

"
" DelimitMate
"
let g:delimitMate_expand_cr = 1     
let g:delimitMate_expand_space = 1      
let g:delimitMate_smart_quotes = 1      
let g:delimitMate_expand_inside_quotes = 0

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

