# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    Makefile.am
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    08/11 2021 08:12
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        08/11 2021      create the file
# 
#     last modified: 08/11 2021 08:12
# ===============================================================

noinst_LTLIBRARIES = libdriver.la

# ------------------
# defining variables
# ------------------
_no_error_com   =
_define_com     =
_include_com    = $(include_com)
_sources_com    =
_cppflags_com   =
_cflags_com     =
_cxxflags_com   =
_ldflags_com    =
_ldadd_com      =

_at32f4xx_lib   = $(top_srcdir)/src/arterytek/at32f4xx/$(driver)/Libraries

# ---------------------
# add necessary content
# ---------------------
_no_error_com   +=

_define_com     +=

_include_com    += \
                   -I$(_at32f4xx_lib)/CMSIS/CM4/CoreSupport \
                   -I$(_at32f4xx_lib)/CMSIS/CM4/DeviceSupport \
                   -I$(_at32f4xx_lib)/AT32F4xx_StdPeriph_Driver/inc

_sources_com    += \
                   at32f4xx_acc.c \
                   at32f4xx_adc.c \
                   at32f4xx_bkp.c \
                   at32f4xx_can.c \
                   at32f4xx_comp.c \
                   at32f4xx_crc.c \
                   at32f4xx_dac.c \
                   at32f4xx_dbgmcu.c \
                   at32f4xx_dma.c \
                   at32f4xx_ertc.c \
                   at32f4xx_eth.c \
                   at32f4xx_exti.c \
                   at32f4xx_flash.c \
                   at32f4xx_gpio.c \
                   at32f4xx_i2c.c \
                   at32f4xx_iwdg.c \
                   at32f4xx_pwr.c \
                   at32f4xx_rcc.c \
                   at32f4xx_rtc.c \
                   at32f4xx_sdio.c \
                   at32f4xx_spi.c \
                   at32f4xx_tim.c \
                   at32f4xx_usart.c \
                   at32f4xx_wwdg.c \
                   at32f4xx_xmc.c \
                   misc.c

_cppflags_com   += $(_no_error_com) $(_include_com) $(_define_com)

_cflags_com     +=

_cxxflags_com   +=

_ldflags_com    +=

_ldadd_com      += $(ldadd_com)

libdriver_la_SOURCES  = $(_sources_com)
libdriver_la_CPPFLAGS = $(_cppflags_com)
libdriver_la_CFLAGS   = $(_cflags_com)
libdriver_la_CXXFLAGS = $(_cxxflags_com)
libdriver_la_LDFLAGS  = $(_ldflags_com)
libdriver_la_LIBADD   = $(_ldadd_com)

