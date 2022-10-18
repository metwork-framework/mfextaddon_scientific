include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=eckit
export VERSION=1.20.2
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=a1dc01dca2b1464d60a31cfbfcf0ee9b
DESCRIPTION= ecKit is a cross-platform c++ toolkit that supports development of tools and applications at ECMWF
WEBSITE=https://github.com/ecmwf/ecbuild
LICENSE=Apache 2.0 : http://www.apache.org/licenses/LICENSE-2.0

all:: $(PREFIX)/bin/eckit-version
$(PREFIX)/bin/eckit-version:
	export MPIEXEC_EXECUTABLE=/usr/lib64/mpich/bin/mpiexec
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress configure_cmake3 build_cmake install_cmake
