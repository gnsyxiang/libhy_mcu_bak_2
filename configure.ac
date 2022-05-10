#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])

m4_include([m4/check_project_info.m4])

AC_INIT([PROJECT_NAME], [VERSION_NUM], [EMAIL_INFO], [PROJECT_NAME], [PROJECT_URL])
AC_CONFIG_SRCDIR([config.h.in])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_AUX_DIR([build-aux])

AM_INIT_AUTOMAKE([foreign -Wall -Werror])
AM_SILENT_RULES([yes])
AM_PROG_AR

LT_INIT

PKG_PROG_PKG_CONFIG([0.24])

# check m4 macro
CHECK_PROJECT_INFO
CHECK_VERSION_INFO
CHECK_DOXYGEN
# CHECK_JAVA

# Checks for programs.
AC_PROG_CXX
AC_PROG_AWK
AC_PROG_CC
AC_PROG_CPP
AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET
# AC_PROG_RANLIB

AM_PROG_AS
AC_PROG_MKDIR_P

SELECT_VENDER
SELECT_CHIP
SELECT_PRODUCT
SELECT_LANGUAGE

PKG_PROG_PKG_CONFIG
if test -n "$PKG_CONFIG"; then
    # Horrible hack for systems where the pkg-config install directory is simply wrong!
    if $PKG_CONFIG --variable=pc_path pkg-config 2>/dev/null | grep -q /lib/; then
        PKG_INSTALLDIR(['${prefix}/lib/pkgconfig'])
    else
        PKG_INSTALLDIR
    fi
fi

AC_ARG_ENABLE([debug_info],
              [AS_HELP_STRING([--enable-debug_info], [enable support for output debug info])],
              [], [enable_debug_info=no])
AM_CONDITIONAL(COMPILE_DEBUG_INFO, [test "$enable_debug_info" = "yes"])


# Checks for libraries.

# Checks for header files.
AC_CHECK_HEADERS([stdint.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_TYPE_INT16_T
AC_TYPE_INT32_T
AC_TYPE_INT64_T
AC_TYPE_INT8_T
AC_TYPE_UINT16_T
AC_TYPE_UINT32_T
AC_TYPE_UINT64_T
AC_TYPE_UINT8_T

# Checks for library functions.
AC_CHECK_FUNCS([memset])

AC_CONFIG_FILES([Makefile
                 $project_name.pc
                 build-script/Makefile
                 build-script/arterytek/Makefile
                 build-script/arterytek/at32f4xx/Makefile
                 doc/Makefile
                 doc/arterytek/Makefile
                 doc/arterytek/at32f4xx/Makefile
                 doc/hdhc/Makefile
                 include/Makefile
                 keil_project/Makefile
                 keil_project/arterytek/Makefile
                 keil_project/hdhc/Makefile
                 res/Makefile
                 src/Makefile
                 src/arterytek/Makefile
                 src/arterytek/at32f4xx/AT32F4xx_StdPeriph_Lib_V1.3.2/Libraries/AT32F4xx_StdPeriph_Driver/Makefile
                 src/arterytek/at32f4xx/AT32F4xx_StdPeriph_Lib_V1.3.2/Libraries/AT32F4xx_StdPeriph_Driver/inc/Makefile
                 src/arterytek/at32f4xx/AT32F4xx_StdPeriph_Lib_V1.3.2/Libraries/AT32F4xx_StdPeriph_Driver/src/Makefile
                 src/arterytek/at32f4xx/AT32F4xx_StdPeriph_Lib_V1.3.2/Libraries/CMSIS/CM4/CoreSupport/Makefile
                 src/arterytek/at32f4xx/AT32F4xx_StdPeriph_Lib_V1.3.2/Libraries/CMSIS/CM4/DeviceSupport/Makefile
                 src/arterytek/at32f4xx/AT32F4xx_StdPeriph_Lib_V1.3.2/Libraries/CMSIS/CM4/DeviceSupport/startup/Makefile
                 src/arterytek/at32f4xx/AT32F4xx_StdPeriph_Lib_V1.3.2/Libraries/CMSIS/CM4/DeviceSupport/startup/gcc/Makefile
                 src/arterytek/at32f4xx/AT32F4xx_StdPeriph_Lib_V1.3.2/Libraries/CMSIS/CM4/DeviceSupport/startup/gcc/linker/Makefile
                 src/arterytek/at32f4xx/AT32F4xx_StdPeriph_Lib_V1.3.2/Libraries/CMSIS/CM4/Makefile
                 src/arterytek/at32f4xx/AT32F4xx_StdPeriph_Lib_V1.3.2/Libraries/CMSIS/Makefile
                 src/arterytek/at32f4xx/AT32F4xx_StdPeriph_Lib_V1.3.2/Libraries/Makefile
                 src/arterytek/at32f4xx/AT32F4xx_StdPeriph_Lib_V1.3.2/Makefile
                 src/arterytek/at32f4xx/Makefile
                 src/hdhc/Makefile
                 ]) # for make dist
AC_OUTPUT
