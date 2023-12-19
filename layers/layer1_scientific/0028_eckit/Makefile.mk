include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=eckit
export VERSION=1.25.0
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=4062081a9e1fb0b20192f369939e2755
DESCRIPTION= ecKit is a cross-platform c++ toolkit that supports development of tools and applications at ECMWF
WEBSITE=https://github.com/ecmwf/eckit
LICENSE=Apache 2.0 : http://www.apache.org/licenses/LICENSE-2.0

all:: $(PREFIX)/bin/eckit-version
$(PREFIX)/bin/eckit-version:
	export MPIEXEC_EXECUTABLE=/usr/lib64/mpich/bin/mpiexec
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress configure_cmake3 build_cmake install_cmake
