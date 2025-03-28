include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=spatialindex
export VERSION=2.1.0
export EXTENSION=tar.bz2
export CHECKTYPE=MD5
export CHECKSUM=f2514875cf5fdcbc91f37b6a09342e83
export EXPLICIT_NAME=$(NAME)-src-$(VERSION)
DESCRIPTION= spatialindex is an extensible framework that supports robust spatial indexing methods
WEBSITE=https://libspatialindex.org
LICENSE=MIT

all:: $(PREFIX)/lib/libspatialindex.so
$(PREFIX)/lib/libspatialindex.so:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXPLICIT_NAME="$(EXPLICIT_NAME)" download uncompress configure_cmake3 build_cmake install_cmake
