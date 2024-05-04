" This needs to be at the top of the file before any plugins are loaded.
let g:mapleader="\<Space>"
let g:maplocalleader=","
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey ','<CR>

" Set the cursor shape to a line cursor in insert mode and a block cursor
" Use a line cursor within insert mode and a block cursor everywhere else.
"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Needed for which-key plugin and easymotion
set notimeout " Disable timeout for key mappings

" increase the timeoutlen (default: 1000), don't add space around the equal sign
set timeoutlen=5000

" https://github.com/junegunn/vim-plug/wiki/tutorial
" Neovim doesn't seem to understand plug#begin when we try to source .vimrc
" from Neovim init.vim
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
" The default plugin directory will be as follows:
" "   - Vim (Linux/macOS): '~/.vim/plugged'
" "   - Vim (Windows): '~/vimfiles/plugged'
" "   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" " You can specify a custom plugin directory by passing it as the argument
" "   - e.g. `call plug#begin('~/.vim/plugged')`
" "   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Install easymotion plugin
Plug 'easymotion/vim-easymotion'

" Highlight copied text
Plug 'machakann/vim-highlightedyank'

" Commentary plugin
Plug 'tpope/vim-commentary'

" NERD tree will be loaded on the first invocation of the `NERDTreeToggle` command
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }

" Which-key plugin
Plug 'liuchengxu/vim-which-key'

" sneak plugin, like f and F, Use ; and , to navigate
Plug 'justinmk/vim-sneak'

" surround plugin. To use: "Hello world!" -> 'Hello world!'= cs"'
Plug 'tpope/vim-surround'


" Initialize plugin system
" " - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" " You can revert the settings after the call like so:
" "   filetype indent off   " Disable file-type-specific indentation
" "   syntax off            " Disable syntax highlighting

" Which-key settings (IdeaVim)
" set which-key " Not work in default Vim
let g:WhichKeyDesc_display = "<leader>d Display options"
let g:WhichKeyDesc_leader = "<leader> Leader key"


"" -- Suggested options --
" Show a few lines of context around the cursor. Note that this makes the
" text scroll if you mouse-click near the start or end of the window.
set scrolloff=10

" Some other general settings recommended
" set linenumber " Not work in default Vim
set showmode
set showcmd

" Easymotion settings
" set easymotion " Not work in default Vim

set clipboard+=unnamed " ensures that IdeaVim shares its clipboard with the system clipboard.
set clipboard+=unnamedplus "Clipboard integration (from neovim)

" Search improvements
set ignorecase
set smartcase
set incsearch " Incremental search
set hlsearch " Highlight search results

" Third party plugins
" Not work with default Vim
" set surround
" set highlightedyank
" set NERDTree
" set sneak " Search for characters in the current line with s and S. ; and , to navigate between matches like f and F.


" Leader commands

" Open NERDTree
map <leader>nt :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFocus<CR>

" Jump around with easy easymotion
map <leader>j <Plug>(easymotion-s)
