"█╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
"██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║ 
"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
"𝕓𝕪 𝕁𝕠𝕒𝕢𝕦𝕚𝕟 𝕍𝕒𝕣𝕖𝕝𝕒 𝕐𝕋               
"https://www.youtube.com/channel/UCw1Ipy5_P1OL0zUJMfYC7-A					    
"---------------------------------vim config---------------------------- 

"activar el coloreo de sintaxis
syntax on

"activar los numeros de linea
set number
"interactuar con el mouse
set mouse=a
"copiar en la terminal con control v y guardar lo copiado en el portapapeles
set clipboard=unnamed
"mostrar los comandos en estado y las selecciones en modo visual
set showcmd
"mostrar la posicion del puntero
set ruler
"permitir caracteres internacionales
set encoding=utf-8
"para que muestre (resalte) lo que se ha encontrado mediante la bsuqueda
set showmatch
"set relativenumber
set list
set listchars=trail:⋅

let mapleader = " "
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L
set splitbelow

"configuracion de TABS
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

"Salir de modo insertar
imap jk <Esc>
imap <C-c> <Esc>l

"mueve bloques de codigo en modo visual o V-Line
xnoremap K :move '<-2<CR>gv-gv 
xnoremap J :move '>+1<CR>gv-gv 
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 

"Mejor Indentación
vnoremap < <gv
vnoremap > >gv

"TERMINAL
vnoremap <c-t> :split<CR>:ter<CR>:resize 10<CR>
nnoremap <c-t> :split<CR>:ter<CR>:resize 10<CR>

"deshabilitar teclas direccionales en el modo normal
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

"crear nueva ventana vertical
nnoremap <leader>1 :vsp<CR>

"crear nueva ventana horizontal
nnoremap <leader>11 :sp<CR>

"ajustar tamaño de la 2da ventana
nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>

"-------------------------------Sources-------------------------------
source $HOME/.config/nvim/plugins/plugins.vim
source $HOME/.config/nvim/plugins/plug-config.vim
"---------------------------Plugins Config-----------------------------

"guardar archivo
nmap <leader>w :w <CR>

"cerrar ventana
nmap <C-w> :q <CR>
nmap <leader>q :q <CR>
nmap <leader>so :so%<CR>

"comandos de busqueda
nmap <leader>gs  :CocSearch
nmap <leader>fs :FZF<CR>
nmap <leader>rg :Rg<CR>

"configuracion de tabs
"let g:indentLine_enabled = 1
let g:indentLine_fileTypeExclude = ["vimwiki", "coc-explorer", "help", "undotree", "diff"]
let g:indentLine_bufTypeExclude = ["help", "terminal"]
let g:indentLine_showFirstIndentLevel = 1

"abrir Nerdtree
nmap <Leader>e :NERDTreeToggle<CR>

"open cocExplorer 
"Buscar dos carácteres con easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" TAB en modo normal se moverá al siguiente buffer
nnoremap <silent> <TAB> :bnext<CR>

" SHIFT-TAB va para atras 
nnoremap <silent> <S-TAB> :bprevious<CR>

"cerrar buffer
nmap <leader>bd :bdelete<CR>

"--Themes config--
set termguicolors
"--------------------------------------------
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.js'