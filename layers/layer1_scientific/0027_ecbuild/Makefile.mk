include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=ecbuild
export VERSION=3.16.0
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=416e1bb7dcadaffcafd0b634fccec491
DESCRIPTION= ecBuild is built on top of CMake and consists of a set of macros as well as a wrapper around CMake
WEBSITE=https://github.com/ecmwf/ecbuild
LICENSE=Apache 2.0 : http://www.apache.org/licenses/LICENSE-2.0

all:: $(PREFIX)/bin/ecbuild
$(PREFIX)/bin/ecbuild:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) OPTIONS="-DCMAKE_INSTALL_PREFIX=$(PREFIX) -DCMAKE_PREFIX_PATH='$(PREFIX);$(PREFIX)/../scientific_core;$(PREFIX)/../core'" download uncompress configure_cmake3 build_cmake install_cmake
