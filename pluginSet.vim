""""""""""""""""""""""""""""""
" => YouCompleteMe plugin [youcompleteme](https://github.com/Valloric/YouCompleteMe)
""""""""""""""""""""""""""""""

set ofu=syntaxcomplete#Complete
highlight OverLength ctermbg=red ctermfg=white guibg=#592929 

if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']


""""""""""""""""""""""""""""""
" => nerdtree plugin [nerdtree](https://github.com/scrooloose/nerdtree)
""""""""""""""""""""""""""""""
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""""""""""""""""""""""""""""""
" => Tsuquyomi plugin [tsuquyomi](https://github.com/Quramy/tsuquyomi.git)
""""""""""""""""""""""""""""""
nmap <Leader>2 :TsuquyomiRenameSymbol<cr>
nmap <Leader>3 :TsuquyomiRenameSymbolC<cr>

""""""""""""""""""""""""""""""
" => ClangFormat plugin [vim-clang-format](https://github.com/rhysd/vim-clang-format)
""""""""""""""""""""""""""""""
map <Leader>` :ClangFormat<cr>
let g:clang_format#style_options = {
            \ 'ColumnLimit' : '0',
            \ 'Language' : 'JavaScript',
            \ 'BasedOnStyle' : 'Google',
            \ }
" deoplete
let g:deoplete#enable_at_startup = 1



"Clang completion plugin for vim
"
let g:clang_c_options = '-std=gnu11'
let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'
