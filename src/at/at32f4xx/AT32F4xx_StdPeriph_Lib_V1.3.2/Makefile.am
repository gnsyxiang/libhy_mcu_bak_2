# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    Makefile.am
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    08/11 2021 08:09
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        08/11 2021      create the file
# 
#     last modified: 08/11 2021 08:09
# ===============================================================

SUBDIRS = Libraries

noinst_LTLIBRARIES = libmcu_driver.la

# ------------------
# defining variables
# ------------------
_no_error_com   =
_define_com     =
_include_com    =
_sources_com    =
_cppflags_com   =
_cflags_com     =
_cxxflags_com   =
_ldflags_com    =
_ldadd_com      =

_at32f4xx_lib   = $(top_builddir)/src/at/at32f4xx/$(AT32F4XX_DRIVER)/Libraries

# ---------------------
# add necessary content
# ---------------------
_no_error_com   +=

_define_com     +=

_include_com    +=

_sources_com    +=

_cppflags_com   += $(_no_error_com) $(_include_com) $(_define_com)

_cflags_com     +=

_cxxflags_com   +=

_ldflags_com    +=

_ldadd_com      += \
                   $(_at32f4xx_lib)/AT32F4xx_StdPeriph_Driver/src/libdriver.la \
                   $(_at32f4xx_lib)/CMSIS/CM4/DeviceSupport/libDeviceSupport.la \
                   $(_at32f4xx_lib)/CMSIS/CM4/DeviceSupport/startup/gcc/libstartup.la

libmcu_driver_la_SOURCES  = $(_sources_com)
libmcu_driver_la_CPPFLAGS = $(_cppflags_com)
libmcu_driver_la_CFLAGS   = $(_cflags_com)
libmcu_driver_la_CXXFLAGS = $(_cxxflags_com)
libmcu_driver_la_LDFLAGS  = $(_ldflags_com)
libmcu_driver_la_LIBADD   = $(_ldadd_com)
