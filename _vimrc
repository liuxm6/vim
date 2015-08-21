""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                    " 公用设置
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set langmenu=zh_CN.UTF-8
language messages zh_CN.utf-8

set nocompatible                                                                " 关闭 vi 兼容模式
set nu                                                                          " 设置行号
set backspace=indent,eol,start                                                  " 设定在插入状态用退格键和Delete键可以删除回车符
set whichwrap+=<,>,h,l                                                          " 使左右移动键在行首或行尾可以移动到前一行或下一行
set wildmenu                                                                    " 命令行补全增强模式,在输入命令时列出匹配项目
let g:mapleader=","                                                             " 映射快捷键开始命令为","号 g:表示全局设置
set ts=4                                                                        " 设置tab为4个空格
set softtabstop=4                                                               " 设置tab为4个空格
set shiftwidth=4                                                                " 设置tab为4个空格
set expandtab                                                                   " 设置tab键替换为空格
set textwidth=79                                                                " 设置文本宽度
set list                                                                        " 显示tab为^I,$显示在每行的结尾
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$                       " 设置tab为>-,末尾为-
set ambiwidth=double                                                            " 对不明宽度字符的处理方式
set smartindent                                                                 " 每一行和前一行有相同的缩进量
set cursorcolumn                                                                " 高亮当前列
set laststatus=2                                                                " 显示状态栏
" set fdm=indent                                                                " 代码折叠zm 关闭折叠 zM 关闭所有 zr 打开 zR 打开所有 zc 折叠当前行 zo 打开当前折叠 zd 删除折叠 zD 删除所有折叠

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

let g:iswindows = 0
let g:islinux = 0
let g:isGUI = 0

if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
else
    let g:islinux = 1
endif

if has("gui_running")
    let g:isGUI = 1
else
    let g:isGUI = 0
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                    " Tag list (ctags)
function MySys()
    if has("win32")
        return "windows"
    elseif has("unix")
        return "linux"
    else
        return "mac"
    endif
endfunction

if MySys() == "windows"                                                         " 设定windows系统中ctags程序的位置
 let Tlist_Ctags_Cmd = 'ctags'
elseif MySys() == "linux"                                                       " 设定windows系统中ctags程序的位置
 let Tlist_Ctags_Cmd = '/usr/bin/ctags'
endif
let Tlist_Show_One_File = 1                                                     " 不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1                                                   " 如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1                                                  " 在右侧窗口中显示taglist窗口
let Tlist_Process_File_Always = 1                                               " 在右侧窗口中显示taglist窗口
map <silent> <leader>tl :TlistToggle<cr>                                        " 快捷键为:,tl
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                    " vim-indent-guides缩进显示
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 1
let g:indent_guides_space_guides = 1
let g:indent_guides_soft_pattern = ' '
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                    " 配色方案 solarized monokai dracula dream
"syntax enable
"set background=light
"colorscheme solarized

"syntax enable
"set background=dark
"colorscheme solarized
colorscheme dracula
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                    " NERDTree(F1快捷键)
map <F2> :NERDTreeToggle<CR>
map <C-F2> :NERDTreeFind<CR>
let NERDTreeChDirMode=2                                                         "选中root即设置为当前目录
let NERDTreeQuitOnOpen=1                                                        "打开文件时关闭树
let NERDTreeShowBookmarks=1                                                     "显示书签
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                    " Vundle:PluginList PluginInstall PluginSearch PluginClean
filetype off
set rtp+=$HOME\.vim\bundle\Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'iamcco/dict.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-ycm'
call vundle#end()
filetype plugin indent on
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                    " fencview 自动检测文件编码
"set g:fencview_autodetect=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                    " ultisnips
let g:UltiSnipsExpandTrigger="<C-ENTER>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"
let g:snips_author = "liuxm"
let g:snips_email = "mr.liuxm@hotmail.com"
let g:snips_github = "https://github.com/liuxm6"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                    " dict.vim
let g:api_key = "1932136763"
let g:keyfrom = "aioiyuuko"
nmap <silent> <Leader>d <Plug>DictSearch                                        " 普通模式下，<Leader>d 即可翻译光标下的文本，并在命令行回显
vmap <silent> <Leader>d <Plug>DictVSearch                                       " 可视化模式下，<Leader>d 即可翻译选中的文本，并在命令行回显
nmap <silent> <Plug>DictWSearch                                                 " 普通模式下，<Leader>w 即可翻译光标下的文本，并且在Dict新窗口显示
vmap <silent> <Plug>DictWVSearch                                                " 可视化模式下，<Leader>w 即可翻译选中的文本，并且在Dict新窗口显示
nmap <silent> <Leader><Leader>r <Plug>DictRSearch                               " 普通模式下，<Leader><Leader>r 即可翻译光标下的单词，并替换为翻译的结果
vmap <silent> <Leader><Leader>r <Plug>DictRVSearch                              " 可视化模式下，<Leader><Leader>r 即可翻译光标下的单词，并替换为翻译的结果
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                    " YouCompleteMe
let g:ycm_global_ycm_extra_conf = '$HOME\.vim\bundle\vim-ycm\.ycm_extra_conf.py'
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_filetype_blacklist = {
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'text' : 1,
      \}
let g:ycm_filetype_specific_completion_to_disable = {}
let g:ycm_register_as_syntastic_checker = 1
let g:ycm_allow_changing_updatetime = 1
let g:ycm_complete_in_comments = 0
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_autoclose_preview_window_after_insertion = 0
let g:ycm_max_diagnostics_to_display = 30
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_key_detailed_diagnostics = '<leader>d'
let g:ycm_confirm_extra_conf = 1
let g:ycm_extra_conf_globlist = ['~/dev/*','!~/*']
let g:ycm_filepath_completion_use_working_dir = 0
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,d,vim,ruby,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
let g:ycm_cache_omnifunc = 1
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F4> :YcmDiags<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if (g:iswindows && g:isGUI)
    let g:Current_Alpha = 255
    let g:Top_Most = 0
    func! Alpha_add()
        let g:Current_Alpha = g:Current_Alpha + 10
        if g:Current_Alpha > 255
            let g:Current_Alpha = 255
        endif
        call libcallnr("vimtweak.dll","SetAlpha",g:Current_Alpha)
    endfunc
    func! Alpha_sub()
        let g:Current_Alpha = g:Current_Alpha - 10
        if g:Current_Alpha < 155
            let g:Current_Alpha = 155
        endif
        call libcallnr("vimtweak.dll","SetAlpha",g:Current_Alpha)
    endfunc
    func! Top_window()
        if  g:Top_Most == 0
            call libcallnr("vimtweak.dll","EnableTopMost",1)
            let g:Top_Most = 1
        else
            call libcallnr("vimtweak.dll","EnableTopMost",0)
            let g:Top_Most = 0
        endif
    endfunc
        nmap <c-up> :call Alpha_add()<CR>
        nmap <c-down> :call Alpha_sub()<CR>
        nmap <leader>t :call Top_window()<CR>
endif

map <F9> :call libcallnr("vimtweak.dll", "SetAlpha", 200) <CR>

au BufRead *.py map <buffer> <F5> :w<CR>:!python % <CR>
au BufRead *.php map <buffer> <F6> :w<CR>:!php % <CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                                        ":syntax php 分号注释引起错误问题
let php_show_semicolon_error = 0

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

au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 180)

au BufNewFile,BufRead *.less set filetype=less