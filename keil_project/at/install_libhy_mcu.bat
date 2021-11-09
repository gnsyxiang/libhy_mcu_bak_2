@echo off

SET _target=hy_mcu
SET _cur_path=.

SET _root_path=%_cur_path%\..\..

SET _src_lib_path=%_cur_path%\Objects\lib%_target%.lib
SET _src_inc_path=%_root_path%\src\at\at32f4xx\AT32F4xx_StdPeriph_Lib_V1.3.2\Libraries

SET _install_path=%_root_path%\..\install
SET _install_inc_path=%_install_path%\include\%_target%
SET _install_lib_path=%_install_path%\lib

echo "install *.h"
rmdir %_install_inc_path% /s /q
mkdir %_install_inc_path%
xcopy %_src_inc_path%\AT32F4xx_StdPeriph_Driver\inc\*.h %_install_inc_path% /s /y
xcopy %_src_inc_path%\CMSIS\CM4\CoreSupport\*.h %_install_inc_path% /s /y
xcopy %_src_inc_path%\CMSIS\CM4\DeviceSupport\*.h %_install_inc_path% /s /y

echo "install *.lib"
mkdir %_install_lib_path%
del %_install_lib_path%\lib%_target%.lib
xcopy %_src_lib_path% %_install_lib_path% /s /y

exit

