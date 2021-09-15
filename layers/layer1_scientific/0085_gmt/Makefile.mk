include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=gmt
export VERSION=6.2.0
export EXTENSION=tar.xz
export CHECKTYPE=MD5
export CHECKSUM=8745d2bf7324323c641100fcd40cb018
DESCRIPTION=\
GMT is an open source collection of about 90 command-line tools for manipulating geographic and Cartesian data sets (including filtering, trend fitting, gridding, projecting, etc.) and producing high-quality illustrations ranging from simple x–y plots via contour maps to artificially illuminated surfaces, 3D perspective views and animations.
WEBSITE=https://www.generic-mapping-tools.org
LICENSE=LGPL

GSHHG_PATH=$(PREFIX)/share/coast
DCW_PATH=$(PREFIX)/share/dcw

all::$(PREFIX)/bin/gmt
$(PREFIX)/bin/gmt: $(GSHHG_PATH) $(DCW_PATH)
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) OPTIONS="-DCMAKE_INSTALL_PREFIX=$(PREFIX) -DGMT_DATA_SERVER=portugal -DGSHHG_ROOT=$(GSHHG_PATH) -DDCW_ROOT=$(DCW_PATH) -DCOPY_GSHHG=FALSE -DCOPY_DCW=FALSE" download uncompress configure_cmake3 build_cmake install_cmake 

$(GSHHG_PATH):
	mkdir -p $(GSHHG_PATH)
	cd ../gshhg_gmt && make downloadonly && cp -R build/gshhg-gmt/*.nc $(GSHHG_PATH)

$(DCW_PATH):
	mkdir -p $(DCW_PATH)
	cd ../dcw_gmt && make downloadonly && cp -R build/dcw-gmt/*.nc build/dcw-gmt/*.txt $(DCW_PATH)

clean::
	cd ../gshhg_gmt && make clean
	cd ../dcw_gmt && make clean

