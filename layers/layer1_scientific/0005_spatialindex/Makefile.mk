include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=spatialindex
export VERSION=1.9.3
export EXTENSION=tar.bz2
export CHECKTYPE=MD5
export CHECKSUM=db89182e1ac9cb12a88db958de2797df
export EXPLICIT_NAME=$(NAME)-src-$(VERSION)
DESCRIPTION= spatialindex is an extensible framework that supports robust spatial indexing methods
WEBSITE=https://libspatialindex.org
LICENSE=MIT

all:: $(PREFIX)/lib/libspatialindex.so
$(PREFIX)/lib/libspatialindex.so:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXPLICIT_NAME="$(EXPLICIT_NAME)" download uncompress configure_cmake3 build_cmake install_cmake
