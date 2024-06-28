""""""""""""""" 
" VIM SETUP
""""""""""""""" 
" not that this is the file to setup nvim
" .vimrc is for regular vim
"
" to format JSON in a .json file
" :%!python -m json.tool
"
" // how to start recording a macro
" // where <letter> is anything from a-z
" q <letter>
" // to stop recording a macro
" q
" // to replay macro
" @ <letter>

""""""""""""""" 
" COMMAND MODE
""""""""""""""" 
" :w // to save changes from a buffer

" :q // to CLOSE a VIM window
" :qa // to CLOSE ALL of VIM

"" SETTINGS
"
" // ONE LINE SETUP for REMOTE LINUX
"set number relativenumber colorcolumn=80,120 autoindent expandtab tabstop=2 shiftwidth=2 cursorline


" :set wrap! // toggle text WRAP

" shows the file line numbers
set number
" enable relative line numbers
set relativenumber

" sets the command prompt window size
set cmdheight=1

" set line length soft limit
set colorcolumn=80,120

" allows auto indentation
set autoindent
" spaces used for indenting even when pressing TAB
set expandtab 
" //toggle between spaces & tabs
" set expandtab!

" //show tabs or spaces
" set list //show tabs
" set nolist //hide tabs

" best to have these matching
" num of spaces for a line indent
set tabstop=2
"set tabstop=4
" identation when using `>>` or `<<` (4=single 'tab')
set shiftwidth=2
"set shiftwidth=4

" highlights the current line
set cursorline
" highlights the current column but slows vim for biggers files
"set cursorcolumn
" // can set this in :set cursorcolumn!

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

"" SESSIONS
"
" // to save session (all buffers /panes as before)
" :mksession path/to/file/<filename>.vim
" :mks! ... // short form
"
" // to restore session
" :source path/to/file/<filename>.vim

"" TABS
"
" // to list the tabs open
" :tabs
"
" // to create a new tab
" :tabnew
" // to open current window (pane) into new tab but keep old window as is
" :tabnew %
" // to open current window (pane) into new tab
" ctrl-w T
"
" // to go to next tab
" gt (or :tabn)
"
" // to go to previous tab
" gT (or :tabp)
"
" // to go to tab i
" <i>gt 
" //ex: 3gt to go to tab 3
"
" // MOVE a TAB to a new position in the tab list
" // note: uses 0 index
" :tabmove 3
" // to move current tab to a certain index
" :tabmove <index|relative-index>
" :tabm <index|relative-index>
" ex:
" :tabmove 2
" :tabm -1


" :tabclose // to close all panes on tab


""""""""""""""" 
" NORMAL MODE
""""""""""""""" 
" // to jump between brackes
" %
" // to show cursor
" cmd + /

" // repeats the command you did recently
" .

"" NAVIGATION
"   WINDOWS
" // to open new VIM window next to the existing one
" ctrl+w v
" // to open new VIM window below the existing one
" ctrl+w s

""   PANES
" // to go between panes/windows in vim 
" ctrl+w w 
" // to go [left/down/up/right] between panes
" ctrl+w [h/j/k/l]

"" BUFFERS
" :ls // to see active buffers (or :buffers / :files)
" :bufferN // to open buffer# N
" ctrl+shift+^ // to toggle between last buffer
" :bdelete | :bd // to delete a buffer
" :%bdelete|edit#|bd# // to delete all open buffers and reopens current buffer/file
"   :%bd|e#|bd#
" :w // to save changes to file

" GET COUNT OF BUFFERS
":echo len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))

" GET COUNT OF INACTIVE BUFFERS
":echo len(filter(range(1, bufnr('$')), 'buflisted(v:val) && !bufloaded(v:val)'))

" HOW TO DELETE INACTIVE BUFFERS
":for buf in filter(range(1, bufnr('$')), 'buflisted(v:val) && !bufloaded(v:val)') | execute 'bdelete' buf | endfor



"" RESIZE
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

"" SEARCH
" (in file)
" `/` // to search forward
" `?` // to search backward
" n // to go to next occurence
" N // to go to previous occurence

" (in project)
" :Rg
" // can then type to complete and find file needed

"" INSERT
" I // to insert at beginning of line
" i // to insert at current position
" a // to append just after current position
" A // to append at end of line

" O // to open new live above the current line
" o // to open new line below the current line

"" EDIT
" J // to simplify and merge the next line with your current line

"" DELETE
" x // to delete a character
" dw // to delete a word
" dd // to delete a line

"" ADVANCED COMMANDS
" ~ // toggle character casing
" 0 // go to start of line
" $ // go to end of line
" ctrl+a // increment number
" ctrl+x // decrement number
" t<char> // till character
" f<char> // on character
" vi<char> // visual mode (select) in character
" ci<char> // change in character 
"     - ex: ci" means change (replace characters in ")
" di<char> // delete in character - ex: di{ means delete all within {}
" da<char> // delete all in and including character 
"     - ex: da{ means delete {} and everything in them
" vi{~ // COMBO: select everything in { and toggle casing
" f.ct( // COMBO: on character . change everything until (

"" SELECT + INDENT/ COPY/ CUT/ PASTE
" v // to select a character
" shift+v // to select a line
" [j/k] // move [up/down] 

" > // to indent

" (in vim clipboard)
" y // to copy
" d // to cut
" P // to paste before the cursor
" p // to paste after the cursor



""""""""""""""" 
" VISUAL MODE
""""""""""""""" 
" // to jump to beginning or end of selection
" o || O



""""""""""""""" 
" INSERT MODE
""""""""""""""" 
" just type normally



""""""""""""""" 
" STATUS LINE
""""""""""""""" 

function! GitGetCurrentBranch()
    let branch_name = system("git rev-parse --abbrev-ref HEAD")
    let notidx = match(branch_name, 'fatal: not a git repository')
    if notidx == -1
        let branch_name = strtrans(branch_name)
        let branch_name = branch_name[:-3][0:20]
        return '{' . branch_name . '}'
    endif
    return ''
endfunction

" Clear status line when vimrc is reloaded.
let status_line = ''

" Status line left side.
"let status_line ..= ' %F %M %Y %R'
let status_line ..= '/%f %M %R'
" %F – Display the full path of the current file.
" %M – Modified flag shows if file is unsaved.
" %Y – Type of file in the buffer.
" %R – Displays the read-only flag.

let status_line ..= '%='
"let status_line ..= 'test' " middle

"let branch_name = GitGetCurrentBranch()
"if branch_name != ''
    "let status_line ..= ' ' .. GitGetCurrentBranch()
"endif

" Use a divider to separate the left side from the right side.
let status_line ..= '%='


" Status line right side.
"set statusline+=\ ascii[%b]\ hex[0x%B]\ row:col[%l:%c]\ (%p%%)
let status_line ..=' [%l:%c] %p%%'
" %b – Shows the ASCII/Unicode character under cursor.
" 0x%B – Shows the hexadecimal character under cursor.
" %l – Display the row number.
" %c – Display the column number.
" %p%% – Show the cursor percentage from the top of the file.

set statusline=%!status_line

" Always Show the status line.
set laststatus=2



""""""""""""""" 
" SCRIPTS
""""""""""""""" 

" // show tabs all the time
set showtabline=2
"set guitablabel=%N/\ %t\ %M "// doesn't work
"set tabline=%N:%t\ %M "// removes the list of tabs
function MyTabLabel(n)
  let buflist = tabpagebuflist(a:n) "// list of buff# for each window
  let winnr = tabpagewinnr(a:n) "// number of windows in tab
   "// use [tabindex]; grabs last window in tab buffer list; use last few filename letters;
  return '[' .. (a:n) .. ']' .. bufname(buflist[winnr - 1])[-14:-1]
endfunction
function MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    " select the highlighting
    if i + 1 == tabpagenr()
      let s ..= '%#TabLineSel#'
    else
      let s ..= '%#TabLine#'
    endif

    " set the tab page number (for mouse clicks)
    let s ..= '%' .. (i + 1) .. 'T'

    " the label is made by MyTabLabel()
    let s ..= '%{MyTabLabel(' .. (i + 1) .. ')} '
  endfor

  " after the last tab fill with TabLineFill and reset tab page nr
  let s ..= '%#TabLineFill#%T'

  " right-align the label to close the current tab page
  "if tabpagenr('$') > 1
    "let s ..= '%=%#TabLine#%999X[x]'
    let s ..= '%=%#TabLine#%999X' .. GitGetCurrentBranch()
  "endif

  return s
endfunction
set tabline=%!MyTabLine() "// filenames get too big





""""""""""""""" 
" MAPPINGS
""""""""""""""" 

" (in system clipboard)
" `"+y` // to copy
" `"+x` // to cut
" cmd+v // to paste
vnoremap <C-y> "+y
vnoremap <C-x> "+x

"" SELECT ALL
" ggVG 
" // `gg` to go to top of page
" // `V` to select line
" // `G` to go to bottom of the page
nnoremap <C-a> ggVG

"" TIMETRAVEL
" u // to undo recent change
" ctrl+r // to redo change

" to make the <Leader> key the ',' key (tilda ~ key)
let mapleader = ','

" scrolling down and up, respectively
nnoremap <C-j> 3jzz
nnoremap <C-k> 3kzz


""""""""""""""" 
" PLUG-INs (using vim-plug)
""""""""""""""" 

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
    Plug 'StanAngeloff/php.vim' " php syntax highlighting // archived DEC 2020
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

    " // Vim script for text filtering and alignment
    Plug 'godlygeek/tabular'
    " // EX: for aligning by commas (uses regex)
    ":Tabularize /, 
    "Some short phrase         , some other phrase
    "A much longer phrase here , and another long phrase

    " // Syntax highlighting, matching rules and mappings for the original Markdown and extensions.
    "Plug 'plasticboy/vim-markdown' " turning off for now bc it looks worse than default

    " // dim paragraphs above and below the active paragraph
    Plug 'junegunn/limelight.vim'
    " :Limelight!
    " // Distraction free writing by removing UI elements and centering everything
    Plug 'junegunn/goyo.vim'
    " :Goyo // to toggle
    " // CALENDAR app for vim - calendar
    Plug 'itchyny/calendar.vim'
    " :Calendar
    " // Press E key to view the event list,
    " // and T key to view the task list.
    " // Also, press ? key to view a quick help
    " :Calendar 2000 1 1
    " :Calendar -view=year
    " :Calendar -view=year -split=vertical -width=27
    " :Calendar -view=year -split=horizontal -position=below -height=12
    " :Calendar -view=clock

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

    " // React syntax highlighting
    "Plug 'mxw/vim-jsx'

    " // Typescript syntax highlighting
    Plug 'leafgarland/typescript-vim'
    " // React JSX syntax highlighting for vim and Typescript
    Plug 'peitalin/vim-jsx-typescript'

    " // BLADE template highlighting
    Plug 'jwalton512/vim-blade'

    " // shows minimap on the right side for your code
    Plug 'wfxr/minimap.vim'
    " :MinimapToggle

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

function! s:tweak_darcula_colors()
  " darcula customizations
  " adds Truecolor to the terminal if supported
  set termguicolors
  let g:lightline = { 'colorscheme': 'darculaOriginal' }
endfunction
autocmd! ColorScheme darcula call s:tweak_darcula_colors()
" prefered syntax color scheme
" TODO CHECK IF PLUGIN INSTALLED
colorscheme darcula


""""""""""""""" 
" PLUG-IN MAPPINGS
""""""""""""""" 

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

" Minimap
"let g:minimap_auto_start = 1
"let g:minimap_auto_start_win_enter = 1
let g:minimap_git_colors = 1
