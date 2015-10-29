"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Shortcuts 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Replace CMD+w with closing buffer but preserving window
macmenu &File.Close key=<nop>
nmap <D-w> :Sayonara!<CR>
imap <D-w> <Esc>:Sayonara!<CR>

" Replace CMD+shift-w with closing buffer and window
macmenu &File.Close\ Window key=<nop>
nmap <D-W> :Sayonara<CR>
imap <D-W> <Esc>:Sayonara<CR>

