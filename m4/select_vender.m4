dnl ===============================================================
dnl 
dnl Release under GPLv-3.0.
dnl 
dnl @file    select_vender.m4
dnl @brief   
dnl @author  gnsyxiang <gnsyxiang@163.com>
dnl @date    10/03 2022 14:49
dnl @version v0.0.1
dnl 
dnl @since    note
dnl @note     note
dnl 
dnl     change log:
dnl     NO.     Author              Date            Modified
dnl     00      zhenquan.qiu        10/03 2022      create the file
dnl 
dnl     last modified: 10/03 2022 14:49
dnl ===============================================================

# SELECT_VENDER()
# --------------------------------------------------------------
# select vender

AC_DEFUN([SELECT_VENDER],
    [
        vender=""

        AC_ARG_WITH([vender],
            [AS_HELP_STRING([--with-vender=@<:@arterytek|hdhc@:>@],
                [select vender about @<:@arterytek|hdhc@:>@ @<:@default=arterytek@:>@])],
            [],
            [with_vender=arterytek])

        case "$with_vender" in
            arterytek)
                AC_DEFINE(HAVE_SELECT_VENDER_ARTERYTEK,  1, [select arterytek vender])
                vender="arterytek"
            ;;
            hdhc)
                AC_DEFINE(HAVE_SELECT_VENDER_HDHC,  1, [select hdhc vender])
                vender="hdhc"
            ;;
            *)
                AC_MSG_ERROR([bad value ${with_vender} for --with-vender=@<:@arterytek|hdhc@:>@])
            ;;
        esac

        AC_SUBST(vender)

        AM_CONDITIONAL([COMPILE_SELECT_VENDER_ARTERYTEK],   [test "x$with_vender" = "xarterytek"])
        AM_CONDITIONAL([COMPILE_SELECT_VENDER_HDHC],        [test "x$with_vender" = "xhdhc"])
    ])

