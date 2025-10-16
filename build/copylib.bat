rem working directory

set workdir=%~dp0
cd %workdir%

xcopy /Y/S Plugins\* ..\..\MetaDSL\CppDsl\deps\lib\*
xcopy /Y/S Plugins\* ..\..\MetaDSL\CppDsl\lib\*
