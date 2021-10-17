" 设置hybird主题
set background=dark

try
    colorscheme hybrid
catch /^Vim\%((\a\+)\)\=:E185/
    " deal with it
endtry
