execute pathogen#infect()
set backspace=2         " backspace in insert mode works like normal editor
syntax on               " syntax highlighting
set background=dark
filetype plugin indent on      " activates indenting for files
set autoindent          " auto indenting
set number              " line numbers
let g:solarized_termcolors=256
colorscheme solarized
set nobackup            " get rid of anoying ~file
set tabstop=2
set shiftwidth=2
set expandtab
set list
set listchars=tab:>-,trail:_

" NERDTree config
let NERDTreeShowHidden=1
map <C-o> :NERDTreeToggle %<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" use ag to search using the ack plugin
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" control-p bindings and startup
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" ctrl-p
nmap <c-p> :Files<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>h :Helptags<CR>
let g:ctrlp_custom_ignore = '\v[\/](build|_build|deps|node_modules|target|dist|bundle|vendor)|(\.(swp|ico|git|svn))$'

let g:fugitive_github_domains = ['https://github.com', 'https://git.innova-partners.com']
imap <C-c> <Esc>

" fzf binding
set rtp+=/usr/local/opt/fzf

" airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#whitespace#enabled = 1
