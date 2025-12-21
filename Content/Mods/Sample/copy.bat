@echo off

set project_dir=D:\dev\Whiskerwood-Project
set app_mod_dir=%localappdata%\Whiskerwood\Saved\mods

mkdir %app_mod_dir%\Sample 2>nul

copy /Y ^
    %project_dir%\Windows\Whiskerwood\Content\Paks\pakchunk100-Windows.pak ^
    %app_mod_dir%\Sample\Sample.pak
copy /Y ^
    %project_dir%\Content\Mods\Sample\Sample.uplugin ^
    %app_mod_dir%\Sample\Sample.uplugin

echo Copy completed.
start "" "steam://rungameid/2489330"
