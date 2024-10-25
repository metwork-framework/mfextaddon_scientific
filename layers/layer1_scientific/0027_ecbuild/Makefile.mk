include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=ecbuild
export VERSION=3.8.5
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=a64b3157c22a3297b54f700b77c907ac
DESCRIPTION= ecBuild is built on top of CMake and consists of a set of macros as well as a wrapper around CMake
WEBSITE=https://github.com/ecmwf/ecbuild
LICENSE=Apache 2.0 : http://www.apache.org/licenses/LICENSE-2.0

all:: $(PREFIX)/bin/ecbuild
$(PREFIX)/bin/ecbuild:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress configure_cmake3 build_cmake install_cmake
