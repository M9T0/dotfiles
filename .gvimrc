
colorscheme iceberg

if has("unix")
    " unix固有の設定
elseif has("win64")
    " 64bit_windows固有の設定
    set rop=type:directx,renmode:5
elseif has("win32unix")
    " Cygwin固有の設定
elseif has("win32")
    " 32bit_windows固有の設定
    set rop=type:directx,renmode:5
endif
