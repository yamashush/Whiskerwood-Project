@echo off

set project_dir=D:\dev\Whiskerwood-Project
set app_mod_dir=%localappdata%\Whiskerwood\Saved\mods

mkdir %app_mod_dir%\AdvancedShortcuts 2>nul

copy /Y ^
    %project_dir%\Windows\Whiskerwood\Content\Paks\pakchunk101-Windows.pak ^
    %app_mod_dir%\AdvancedShortcuts\AdvancedShortcuts.pak
copy /Y ^
    %project_dir%\Content\Mods\AdvancedShortcuts\AdvancedShortcuts.uplugin ^
    %app_mod_dir%\AdvancedShortcuts\AdvancedShortcuts.uplugin

echo Copy completed.
start "" "steam://rungameid/2489330"
