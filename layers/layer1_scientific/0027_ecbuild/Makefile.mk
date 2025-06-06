include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=ecbuild
export VERSION=3.9.1
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=2f7c1db1b185c373e0b7266f56d7c81c
DESCRIPTION= ecBuild is built on top of CMake and consists of a set of macros as well as a wrapper around CMake
WEBSITE=https://github.com/ecmwf/ecbuild
LICENSE=Apache 2.0 : http://www.apache.org/licenses/LICENSE-2.0

all:: $(PREFIX)/bin/ecbuild
$(PREFIX)/bin/ecbuild:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress configure_cmake3 build_cmake install_cmake
