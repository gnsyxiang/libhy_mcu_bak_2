# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    Makefile.am
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    05/11 2021 20:28
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        05/11 2021      create the file
# 
#     last modified: 05/11 2021 20:28
# ===============================================================

SUBDIRS = $(chip)

noinst_LTLIBRARIES = libmcu_vender.la

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

_ldadd_com      += $(top_builddir)/src/$(vender)/$(chip)/libmcu.la

libmcu_vender_la_SOURCES  = $(_sources_com)
libmcu_vender_la_CPPFLAGS = $(_cppflags_com)
libmcu_vender_la_CFLAGS   = $(_cflags_com)
libmcu_vender_la_CXXFLAGS = $(_cxxflags_com)
libmcu_vender_la_LDFLAGS  = $(_ldflags_com)
libmcu_vender_la_LIBADD   = $(_ldadd_com)

