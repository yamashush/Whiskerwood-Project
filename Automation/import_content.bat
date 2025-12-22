@echo off

set project_dir=D:\dev\Whiskerwood-Project

D:\dev\CookedExport-v2\CookedExport.exe ^
    -p "C:\Program Files (x86)\Steam\steamapps\common\Whiskerwood\Whiskerwood\Content\Paks" ^
    -o %project_dir% ^
    -m %project_dir%\Automation\Whiskerwood-0.6.177.0.usmap

echo Import completed.
