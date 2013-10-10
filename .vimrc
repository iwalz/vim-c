execute pathogen#infect()
syntax on
filetype plugin indent on

let g:tagbarwinnr=-1
let g:nerdtreewinnr=-1
let g:conqueshellwinnr=-1

let g:NERDTreeDirArrows=0
" Open Nerdtree if no argument is given
if !argc()  
	let g:nerdtree_tabs_open_on_console_startup=1 
	let g:nerdtree_tabs_smart_startup_focus=2
endif
" Close NerdTree if no window is left beside NerdTree
let g:nerdtree_tabs_autoclose=1
" Enable context specific search
let g:SuperTabDefaultCompletionType = "context"
" Sorts from top to bottom
let g:SuperTabContextDefaultCompletionType = "<c-n>"

" No limit
let g:ctrlp_max_files = 0
" Current working dir
let g:ctrlp_working_path_mode = 'c'
" Use to find files
let g:ctrlp_user_command = 'find %s -type f'
" Open files in new tab
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }

set nocompatible 
set number

" Fix left and right key bindings
map <ESC>[C <C-Right>
map <ESC>[D <C-Left>

" Switch to left/right with Ctrl+left and right arrow
nnoremap <C-Left> :tabprev<CR>
nnoremap <C-Right> :tabn<CR>

nnoremap <C-F5> :CtrlPClearCache<CR>
" nnoremap <C-e> :NERDTreeTabsToggle<CR>:2 wincmd w<CR>
nnoremap <C-e> :call ToggleNerdTree()<CR>
nnoremap <C-r> :call ToggleTagbar()<CR>
nnoremap <F2> :call FocusEditor()<CR>
nnoremap <F3> :call FocusNerdTree()<CR>
nnoremap <F4> :call FocusTagbar()<CR>
nnoremap <F6> :call ToggleConqueShell()<CR>

function! IsTagbarOpen()
	let g:tagbarwinnr = bufwinnr('__Tagbar__')
	if g:tagbarwinnr == -1
		return 0
	else
		return 1
	endif
endfunction

function! IsNERDTreeOpen()
	if exists('t:NERDTreeBufName')
		let g:nerdtreewinnr = bufwinnr(t:NERDTreeBufName)
	else
		let g:nerdtreewinnr = -1
	endif
	
	if g:nerdtreewinnr == -1
		return 0
	else
		return 1
	endif
endfunction

function! IsConqueShellOpen()
	if g:conqueshellwinnr == -1
		return 0
	else
		return 1
	endif
endfunction

function! ToggleNerdTree()
	if IsNERDTreeOpen() == 1
		execute ":NERDTreeTabsClose"
	else
		execute ":NERDTreeTabsOpen"
		execute "2 wincmd w"
	endif
endfunction

function! ToggleTagbar()
	if IsTagbarOpen() == 1
		execute ":TagbarClose"
	else
		execute ":TagbarOpen"
	endif
endfunction

function! ToggleConqueShell()
	if IsConqueShellOpen() == 1
		if mode() == "n"
			execute g:conqueshellwinnr." wincmd w"
			execute ":q"	
			let g:conqueshellwinnr = -1
		endif
	else 
		execute ":ConqueTermSplit bash"
		let g:conqueshellwinnr = winnr()
	endif
endfunction

function! FocusEditor()
	if IsNERDTreeOpen() == 1
		execute "2 wincmd w"
	else
		execute "1 wincmd w"
	endif
endfunction

function! FocusNerdTree()
	if IsNERDTreeOpen() == 1
		execute g:nerdtreewinnr." wincmd w"
	else
		execute ":call ToggleNerdTree()"
		execute g:nerdtreewinnr." wincmd w"
	endif
endfunction

function! FocusTagbar()
	if IsTagbarOpen() == 1
		execute g:tagbarwinnr." wincmd w"
	else
		execute ":call ToggleTagbar()"
		execute g:tagbarwinnr." wincmd w"
	endif
endfunction
