" to format JSON in a .json file
" :%!python -m json.tool

" shows the file line numbers
set number

" set line length soft limit
set colorcolumn=80,120

" adds tabs and expands them to spaces
set tabstop=2
set expandtab

" allows auto indentation
set autoindent
" make the indents a single 'tab'
set shiftwidth=4

" highlights the current line
set cursorline
" highlights the current column but slows vim for biggers files
"set cursorcolumn

" adds syntax highlighting
syntax on

set foldmethod=indent "fold based on indent 
set nofoldenable "defaults no folding on first open
"set foldcolumn=1 "creates column for fold levels
    "za //to toggle fold
        "zo //to OPEN fold
        "zc //to CLOSE fold
    "zm //to have MORE fold levels
        "zM //to have the MOST fold levels
    "zr //to have REDUCED fold levels
        "zR //to have the MOST REDUCED fold levels

" // toggle text WRAP
" :set wrap!

" // to CLOSE a VIM window
" :q
" // to save changes from a buffer
" :w
" // to CLOSE ALL of VIM
" :qa

" SESSIONS
" // to save session (all buffers /panes as before)
" :mksession path/to/file/<filename>.vim
" // to resotre session
" :source path/to/file/<filename>.vim

" TABS
" // to list the tabs open
" :tabs
" // to create a new tab
" :tabnew
" // to go to next tab
" gt (or :tabn)
" // to go to previous tab
" gT (or :tabp)
" // to go to tab i
" <i>gt 
" //ex: 3gt to go to tab 3

" // to open current window (pane) into new tab
" ctrl-w T
" // to open current window (pane) into new tab but keep old window as is
" :tabnew %

" // to move current tab to a certain index
" :tabmove <index|relative-index>
" :tabm <index|relative-index>
" ex:
" :tabmove 2
" :tabm -1

" NAVIGATION
"   WINDOWS
" // to open new VIM window next to the existing one
" ctrl+w v
" // to open new VIM window below the existing one
" ctrl+w s

"   PANES
" // to go between panes/windows in vim 
" ctrl+w w 
" // to go [left/down/up/right] between panes
" ctrl+w [h/j/k/l]

" BUFFERS
" :ls // to see active buffers (or :buffers / :files)
" :bufferN // to open buffer# N
" ctrl+shift+^ // to toggle between last buffer
" :bdelete | :bd // to delete a buffer
" :%bdelete|edit#|bd# // to delete all open buffers and reopens current buffer/file
"   :%bd|e#|bd#
" :w // to save changes to file

" RESIZE
" // to resize the width of a pane
" :vertical resize (+/-) n
" // to resize by 1 character wider or narrower
" <C-w> (>/<)
"
" // to resize the height of a pane
" :resize (+/-) n
" :res (+/-) n 
" // to vertical resize by 1 line 
" <C-w> (+/-)
"
" // to equalize width and height 
" <C-w> = 

" SEARCH
" (in file)
" `/` // to search forward
" `?` // to search backward
" n // to go to next occurence
" N // to go to previous occurence

" (in project)
" :Rg
" // can then type to complete and find file needed

" INSERT
" I // to insert at beginning of line
" i // to insert at current position
" a // to append just after current position
" A // to append at end of line

" O // to open new live above the current line
" o // to open new line below the current line

" EDIT
" J // to simplify and merge the next line with your current line

" DELETE
" x // to delete a character
" dw // to delete a word
" dd // to delete a line

" SELECT + INDENT/ COPY/ CUT/ PASTE
" v // to select a character
" shift+v // to select a line
" [j/k] // move [up/down] 

" > // to indent

" (in vim clipboard)
" y // to copy
" d // to cut
" P // to paste before the cursor
" p // to paste after the cursor

" (in system clipboard)
" `"+y` // to copy
" `"+x` // to cut
" cmd+v // to paste
vnoremap <C-y> "+y
vnoremap <C-x> "+x

" SELECT ALL
" ggVG 
" // `gg` to go to top of page
" // `V` to select line
" // `G` to go to bottom of the page
nnoremap <C-a> ggVG

" TIMETRAVEL
" u // to undo recent change
" ctrl+r // to redo change

" to make the <Leader> key the ',' key (tilda ~ key)
let mapleader = ','

" scrolling down and up, respectively
nnoremap <C-j> 3jzz
nnoremap <C-k> 3kzz



" //  PLUG-INs (using vim-plug)

if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd!
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
    Plug 'doums/darcula' " my prefered syntax color scheme 
    Plug 'preservim/nerdtree' " to see filetree
    Plug 'airblade/vim-gitgutter' " to see git if line changed
    Plug 'preservim/nerdcommenter' " allows commenting out 
    "Plug 'ctrlpvim/ctrlp.vim' " using fzf instead now
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'jparise/vim-graphql' " graphQL syntax highlighting
    Plug 'StanAngeloff/php.vim' " php syntax highlighting
    Plug 'adoy/vim-php-refactoring-toolbox'
    "<Leader>rlv //rename local variable
    "<L>rcv //rename class variable
    "<L>rm //rename method
    "<L>eu //extract use statement
    "<L>du //detect unused use statment
    "<L>ec //extract const
    "<L>ep //extract class property
    "<L>em //extract method
    "<L>cp //create property
    "<L>== //align assignments (equals)
    "<L>sg //create getters & setters
    "<L>cog //create getters
    "<L>da //document all using your document plugin

    Plug 'tpope/vim-fugitive'
    " :Git blame // to view the commit history
    "   <enter> // to view the selected commit 
    " :Gclog // to view a list of commits and what you did in them
    " // to manage git branches
    Plug 'sodapopcan/vim-twiggy'
    " :Twiggy
    " ERROR: Unknown function FugitiveShellCommand()
    " // a git commit browser
    Plug 'junegunn/gv.vim' 
    " :GV
    " ERROR: Vim(let):E117: Unknown function: FugitiveShellCommand

    " // don't want to include tags just yet
    "Plug 'majutsushi/tagbar'
    " // requires ctags to be included
    " :TagbarToggle

"// turning off for now bc of node server running out of memory
    "Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " :CocInstall coc-tsserver coc-json coc-html coc-css
    " :CocInstall coc-phpls

    " // just turning off for now
    "Plug 'arnaud-lb/vim-php-namespace', {'for': 'php'}

    " // autocompletion plug in
    "Plug 'ncm2/ncm2'
    "Plug 'roxma/nvim-yarp'
    " // NOTE: you need to install completion sources to get completions. Check
    " // our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
    "Plug 'ncm2/ncm2-bufword'
    "Plug 'ncm2/ncm2-path'
    "Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
    "Plug 'phpactor/ncm2-phpactor'

    " // makes the start page little more informative with recent files used
    Plug 'mhinz/vim-startify'

    Plug 'godlygeek/tabular'
    " // Syntax highlighting, matching rules and mappings for the original Markdown and extensions.
    "Plug 'plasticboy/vim-markdown' " turning off for now bc it looks worse than default

    " // dim paragraphs above and below the active paragraph
    Plug 'junegunn/limelight.vim'
    " :Limelight!
    " // Distraction free writing by removing UI elements and centering everything
    Plug 'junegunn/goyo.vim'
    " :Goyo // to toggle

    " // provides syntax highlighting and improved indentation
    Plug 'pangloss/vim-javascript'

    " // svelte syntax highlighting
    Plug 'evanleck/vim-svelte', {'branch': 'main'}

    " // vue syntax highlighting
    Plug 'posva/vim-vue'

    " // to allow CSV parsing
    "Plug 'chrisbra/csv.vim'
    " // looks weird so commenting out for now

    " // to allow rust-lang parsing and syntax highlighting
    Plug 'rust-lang/rust.vim'

    " // to allow ruby lang parsing and syntax highlighting
    Plug 'vim-ruby/vim-ruby'
    " // to allow ruby lang parsing and syntax highlighting
    Plug 'tpope/vim-rails'

    " // to change surrounding (matching) tags or quotations
    Plug 'tpope/vim-surround'
    " cs"] // to change from " to ]
    " cs'<q> // to change from ' to <q> and </q>
    " cst{ // to change from <any-tag> to } with a space

    " //to install any plugins
    " :source % //to register a newly added plugin
    " :PlugInstall 
    " //to un-install any plugins
    " :source % 
    " :PlugClean 
call plug#end()

" for full rust-lang parsing functionality
syntax enable
filetype plugin indent on

" adds Truecolor to the terminal if supported
set termguicolors
" prefered syntax color scheme
" TODO CHECK IF PLUGIN INSTALLED
colorscheme darcula
let g:lightline = { 'colorscheme': 'darculaOriginal' }

" ctrl+o // to open nerd tree 
map <C-o> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
" `r` is used to reload the directory to have the new file show

" ctrl-p for fzf between files
map <C-p> :Files<CR>

map <C-i> :GitGutterSignsToggle<CR> 
map <C-l> :GitGutterLineHighlightsToggle<CR>

"// turning off for now bc of node server
" // code completion (coc.vim) 
" issues
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              "\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" // GoTo code navigation.
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
" // darcula links to coc.vim
"hi! link CocErrorSign ErrorSign
"hi! link CocWarningSign WarningSign
"hi! link CocInfoSign InfoSign
"hi! link CocHintSign InfoSign
"hi! link CocErrorFloat Pmenu
"hi! link CocWarningFloat Pmenu
"hi! link CocInfoFloat Pmenu
"hi! link CocHintFloat Pmenu
"hi! link CocHighlightText IdentifierUnderCaret
"hi! link CocHighlightRead IdentifierUnderCaret
"hi! link CocHighlightWrite IdentifierUnderCaretWrite
"hi! link CocErrorHighlight CodeError
"hi! link CocWarningHighlight CodeWarning
"hi! link CocInfoHighlight CodeInfo
"hi! link CocHintHighlight CodeHint

" // following breaks other shortcuts
" // Use K to show documentation in preview window.
"nnoremap <silent> K :call <SID>show_documentation()<CR>
"function! s:show_documentation()
  "if (index(['vim','help'], &filetype) >= 0)
    "execute 'h '.expand('<cword>')
  "elseif (coc#rpc#ready())
    "call CocActionAsync('doHover')
  "else
    "execute '!' . &keywordprg . " " . expand('<cword>')
  "endif
"endfunction

" // DONT WORK 
" // mappings for vim-php-namespace
"nnoremap <Leader>u :PHPImportClass<cr>
"nnoremap <Leader>e :PHPExpandFQCNAbsolute<cr>
"nnoremap <Leader>E :PHPExpandFQCN<cr>
" // Automatically adds the corresponding use statement for the name under the cursor
"function! IPhpInsertUse()
    "call PhpInsertUse()
    "call feedkeys('a',  'n')
"endfunction
"autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
"autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
" // Expands the name under the cursor to its fully qualified name
"function! IPhpExpandClass()
    "call PhpExpandClass()
    "call feedkeys('a', 'n')
"endfunction
"autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
"autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>

" // NeoVimCode completion setup
"let g:python3_host_prog='/Library/Frameworks/Python.framework/Versions/3.8/bin/python3'
" enable ncm2 for all buffers
"autocmd BufEnter * call ncm2#enable_for_buffer()
" // IMPORTANT: :help Ncm2PopupOpen for more information
"set completeopt=noinsert,menuone,noselect
"augroup PhpactorMappings
    "au!
    "au FileType php nmap <buffer> <Leader>u :PhpactorImportClass<CR>
    "au FileType php nmap <buffer> <Leader>e :PhpactorClassExpand<CR>
    "au FileType php nmap <buffer> <Leader>ua :PhpactorImportMissingClasses<CR>
"augroup END

