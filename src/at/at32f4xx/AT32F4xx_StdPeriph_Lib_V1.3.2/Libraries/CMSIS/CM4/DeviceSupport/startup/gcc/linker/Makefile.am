# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    Makefile.am
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    08/11 2021 15:00
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        08/11 2021      create the file
# 
#     last modified: 08/11 2021 15:00
# ===============================================================

# ------------------
# defining variables
# ------------------
_dist_file_com  =
resdir          = $(prefix)/res/@project_name@
res_DATA        =
EXTRA_DIST      =

# ------------------
# make install files
# ------------------
if COMPILE_SELECT_MCU_AT32F4XX
res_DATA        += AT32F407xG_FLASH.ld
endif


# ---------------
# make dist files
# ---------------
if COMPILE_SELECT_MCU_AT32F4XX
_dist_file_com  += AT32F407xG_FLASH.ld
endif

EXTRA_DIST      += $(_dist_file_com)

