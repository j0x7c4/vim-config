set ai
set ruler
set lbr " satirlari harflerle degil kelimelerle boler

"set columns=90
"set lines=50

set backspace=indent,eol,start
syntax on

filetype plugin on
filetype indent on
filetype plugin indent on

" searching
set incsearch                 " incremental search
set ignorecase                " search ignoring case
set hlsearch                  " highlight the search
set showmatch                 " show matching bracket
set diffopt=filler,iwhite     " ignore all whitespace and sync

set tabstop=4
set shiftwidth=4
set scrolloff=5               " keep at least 5 lines above/below


" Necesary  for lots of cool vim things
set nocompatible

" line numbers
set number

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*

" Who doesn't like autoindent?
set autoindent

" Spaces are better than a tab character
set expandtab
set smarttab

" Enable mouse support in console
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" Ignoring case is a fun trick
set ignorecase

" And so is Artificial Intellegence!
set smartcase


" Favorite Color Scheme
if has("gui_running")
   colorscheme wombat
   " Remove Toolbar
   set guioptions-=T
   "Terminus is AWESOME
   set guifont=Consolas\ 11
else
   colorscheme wombat
endif


" Open the TagList Plugin <F3>
nnoremap <silent> <F3> :Tlist<CR>

" Next Tab
nnoremap <silent> <M-Right> :tabnext<CR>

" Previous Tab
nnoremap <silent> <M-Left> :tabprevious<CR>

" New Tab
nnoremap <silent> <C-t> :tabnew<CR>

" Rotate Color Scheme <F8>
nnoremap <silent> <F8> :execute RotateColorTheme()<CR>

" Save with ctrl-s
nnoremap <silent> <C-s> :w<CR>

" Save and quit with ctrl-w
nnoremap <silent> <C-w> :wq<CR>


"set backup
"set backupdir=$HOME/vim/backup
"set directory=$HOME/vim/tmp


set cul       
"hi CursorLine term=none cterm=none ctermbg=3


"nmap <f5> :!python %<CR><CR>

"map <F10> :NERDTreeToggle<CR>
map <F6> :split<CR>
map <F7> :vsplit<CR>
set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

" taglist
"let Tlist_Auto_Highlight_Tag = 1
"let Tlist_Auto_Open = 1
"let Tlist_Auto_Update = 1
"let Tlist_Close_On_Select = 0
"let Tlist_Compact_Format = 0
"let Tlist_Display_Prototype = 0
"let Tlist_File_Fold_Auto_Close = 0
"let Tlist_GainFocus_On_ToggleOpen = 1
"let Tlist_Hightlight_Tag_On_BufEnter = 1
"let Tlist_Inc_Winwidth = 0
"let Tlist_Max_Submenu_Items = 1
"let Tlist_Max_Tag_Length = 30
"let Tlist_Process_File_Always = 0
"let Tlist_Show_Menu = 0
"let Tlist_Show_One_File = 0
"let Tlist_Sort_Type = "order"
"let Tlist_Use_Horiz_Window = 0
"let Tlist_Use_Right_Window = 1
"let Tlist_WinWidth = 40
"let tlist_php_settings = 'php;c:class;i:interfaces;d:constant;f:function'

map <A-1> :tabn 1<CR>
map <A-2> :tabn 2<CR>
map <A-3> :tabn 3<CR>
map <A-4> :tabn 4<CR>
map <A-5> :tabn 5<CR>
map <A-6> :tabn 6<CR>
map <A-7> :tabn 7<CR>
map <A-8> :tabn 8<CR>
map <A-9> :tabn 9<CR>

