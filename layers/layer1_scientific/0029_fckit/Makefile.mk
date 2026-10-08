include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=fckit
export VERSION=0.14.4
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=03e3eaa64641cb59e56c1540e610c58b
export EXPLICIT_NAME=$(NAME)-$(VERSION)-Source
DESCRIPTION= FCKIT is a Fortran toolkit for interoperating Fortran with C/C++
WEBSITE=https://github.com/ecmwf/fckit
LICENSE=Apache 2.0 : http://www.apache.org/licenses/LICENSE-2.0

all:: $(PREFIX)/bin/fckit
$(PREFIX)/bin/fckit:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) OPTIONS="-DCMAKE_INSTALL_PREFIX=$(PREFIX) -DCMAKE_PREFIX_PATH='$(PREFIX);$(PREFIX)/../scientific_core;$(PREFIX)/../core'" download uncompress configure_cmake3 build_cmake install_cmake
