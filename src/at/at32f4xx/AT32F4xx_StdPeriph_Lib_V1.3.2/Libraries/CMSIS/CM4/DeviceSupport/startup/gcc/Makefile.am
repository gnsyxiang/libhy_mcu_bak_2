# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    Makefile.am
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    08/11 2021 08:18
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        08/11 2021      create the file
# 
#     last modified: 08/11 2021 08:18
# ===============================================================

SUBDIRS = linker

noinst_LTLIBRARIES = libstartup.la

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

_at32f4xx_lib   = $(top_srcdir)/src/at/at32f4xx/$(AT32F4XX_DRIVER)/Libraries

# ---------------------
# add necessary content
# ---------------------
_no_error_com   +=

_define_com     +=

_include_com    += \
                   -I$(_at32f4xx_lib)/CMSIS/CM4/CoreSupport         \
                   -I$(_at32f4xx_lib)/CMSIS/CM4/DeviceSupport       \
                   -I$(_at32f4xx_lib)/AT32F4xx_StdPeriph_Driver/inc

_sources_com    += startup_at32f407vgt7.s

_cppflags_com   += $(_no_error_com) $(_include_com) $(_define_com)

_cflags_com     +=

_cxxflags_com   +=

_ldflags_com    +=

_ldadd_com      +=

libstartup_la_SOURCES   = $(_sources_com)
libstartup_la_CPPFLAGS  = $(_cppflags_com)
libstartup_la_CCASFLAGS =
libstartup_la_CFLAGS    = $(_cflags_com)
libstartup_la_CXXFLAGS  = $(_cxxflags_com)
libstartup_la_LDFLAGS   = $(_ldflags_com)
libstartup_la_LIBADD    = $(_ldadd_com)
