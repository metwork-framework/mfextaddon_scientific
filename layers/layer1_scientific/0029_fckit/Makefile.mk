include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=fckit
export VERSION=0.13.4
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=81b09855308a44e8a54df228bc747b13
export EXPLICIT_NAME=$(NAME)-$(VERSION)-Source
DESCRIPTION= FCKIT is a Fortran toolkit for interoperating Fortran with C/C++
WEBSITE=https://github.com/ecmwf/fckit
LICENSE=Apache 2.0 : http://www.apache.org/licenses/LICENSE-2.0

all:: $(PREFIX)/bin/fckit
$(PREFIX)/bin/fckit:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress configure_cmake3 build_cmake install_cmake
