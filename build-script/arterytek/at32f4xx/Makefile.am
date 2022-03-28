# ===============================================================
# 
# Release under GPLv-3.0.
# 
# @file    Makefile.am
# @brief   
# @author  gnsyxiang <gnsyxiang@163.com>
# @date    22/03 2022 15:41
# @version v0.0.1
# 
# @since    note
# @note     note
# 
#     change log:
#     NO.     Author              Date            Modified
#     00      zhenquan.qiu        22/03 2022      create the file
# 
#     last modified: 22/03 2022 15:41
# ===============================================================

# ------------------
# defining variables
# ------------------
_dist_file_com  =

# ------------------
# make install files
# ------------------


# ---------------
# make dist files
# ---------------
_dist_file_com  += config.sh

EXTRA_DIST      = $(_dist_file_com)

dist-hook:
	@echo "modify configure.ac"; \
		\
		sed -i 's/product=.*/product=$(product)/g' $(top_distdir)/build-script/$(vender)/$(chip)/config.sh; \
		sed -i 's/language=.*/language=$(language)/g' $(top_distdir)/build-script/$(vender)/$(chip)/config.sh; \
		\
		sed -i '/build-script/d' $(top_distdir)/configure.ac; \
		sed -i '/project_name.pc/a build-script/$(vender)/$(chip)/Makefile' $(top_distdir)/configure.ac; \
		sed -i '/project_name.pc/a build-script/$(vender)/Makefile' $(top_distdir)/configure.ac; \
		sed -i '/project_name.pc/a build-script/Makefile' $(top_distdir)/configure.ac; \
		\
		sed -i '/doc\//d' $(top_distdir)/configure.ac; \
		sed -i '/include\/Makefile/a doc/Makefile' $(top_distdir)/configure.ac; \
		sed -i '/include\/Makefile/a doc/$(vender)/Makefile' $(top_distdir)/configure.ac; \
		sed -i '/include\/Makefile/a doc/$(vender)/$(chip)/Makefile' $(top_distdir)/configure.ac; \
		\
		sed -i '/keil_project\//d' $(top_distdir)/configure.ac; \
		sed -i '/include\/Makefile/a keil_project/Makefile' $(top_distdir)/configure.ac; \
		sed -i '/include\/Makefile/a keil_project/$(vender)/Makefile' $(top_distdir)/configure.ac; \
		\
		sed -i '/src\//d' $(top_distdir)/configure.ac; \
		sed -i '/include\/Makefile/a src/$(vender)/Makefile' $(top_distdir)/configure.ac; \
		sed -i '/include\/Makefile/a src/$(vender)/$(driver)/Makefile' $(top_distdir)/configure.ac; \
		sed -i '/include\/Makefile/a src/$(vender)/$(driver)/Libraries/Makefile' $(top_distdir)/configure.ac; \
		sed -i '/include\/Makefile/a src/$(vender)/$(driver)/Libraries/CMSIS/Makefile' $(top_distdir)/configure.ac; \
		sed -i '/include\/Makefile/a src/$(vender)/$(driver)/Libraries/CMSIS/CM4/Makefile' $(top_distdir)/configure.ac; \
		sed -i '/include\/Makefile/a src/$(vender)/$(driver)/Libraries/CMSIS/CM4/DeviceSupport/Makefile' $(top_distdir)/configure.ac; \
		sed -i '/include\/Makefile/a src/$(vender)/$(driver)/Libraries/CMSIS/CM4/DeviceSupport/startup/Makefile' $(top_distdir)/configure.ac; \
		sed -i '/include\/Makefile/a src/$(vender)/$(driver)/Libraries/CMSIS/CM4/DeviceSupport/startup/gcc/Makefile' $(top_distdir)/configure.ac; \
		sed -i '/include\/Makefile/a src/$(vender)/$(driver)/Libraries/CMSIS/CM4/DeviceSupport/startup/gcc/linker/Makefile' $(top_distdir)/configure.ac; \
		sed -i '/include\/Makefile/a src/$(vender)/$(driver)/Libraries/CMSIS/CM4/CoreSupport/Makefile' $(top_distdir)/configure.ac; \
		sed -i '/include\/Makefile/a src/$(vender)/$(driver)/Libraries/AT32F4xx_StdPeriph_Driver/Makefile' $(top_distdir)/configure.ac; \
		sed -i '/include\/Makefile/a src/$(vender)/$(driver)/Libraries/AT32F4xx_StdPeriph_Driver/inc/Makefile' $(top_distdir)/configure.ac; \
		sed -i '/include\/Makefile/a src/$(vender)/$(driver)/Libraries/AT32F4xx_StdPeriph_Driver/src/Makefile' $(top_distdir)/configure.ac

