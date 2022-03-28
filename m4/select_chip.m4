dnl ===============================================================
dnl 
dnl Release under GPLv-3.0.
dnl 
dnl @file    select_chip.m4
dnl @brief   
dnl @author  gnsyxiang <gnsyxiang@163.com>
dnl @date    10/03 2022 20:11
dnl @version v0.0.1
dnl 
dnl @since    note
dnl @note     note
dnl 
dnl     change log:
dnl     NO.     Author              Date            Modified
dnl     00      zhenquan.qiu        10/03 2022      create the file
dnl 
dnl     last modified: 10/03 2022 20:11
dnl ===============================================================

# SELECT_CHIP()
# --------------------------------------------------------------
# select chip

AC_DEFUN([SELECT_CHIP],
    [
        chip=""
        driver=""

        AC_ARG_WITH([chip],
            [AS_HELP_STRING([--with-chip=@<:@at32f4xx@:>@],
                [select chip about @<:@at32f4xx@:>@ @<:@default=at32f4xx@:>@])],
            [],
            [with_chip=at32f4xx])

        case "$with_chip" in
            at32f4xx)
                AC_DEFINE(HAVE_SELECT_CHIP_AT32F4XX,  1, [select at32f4xx chip])
                chip="at32f4xx"
                driver="AT32F4xx_StdPeriph_Lib_V1.3.2"
            ;;
            *)
                AC_MSG_ERROR([bad value ${with_chip} for --with-chip=@<:@at32f4xx@:>@])
            ;;
        esac

        AC_SUBST(chip)
        AC_SUBST(driver)

        AM_CONDITIONAL([COMPILE_SELECT_CHIP_AT32F4XX],  [test "x$with_chip" = "xat32f4xx"])
    ])

