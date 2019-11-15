include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=gdbm
export VERSION=1.18.1
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=988dc82182121c7570e0cb8b4fcd5415
DESCRIPTION=\
GNU dbm (or GDBM, for short) is a library of database functions that use \
extensible hashing and work similar to the standard UNIX dbm. These \
routines are provided to a programmer needing to create and manipulate a \
hashed database
WEBSITE=https://www.gnu.org.ua/software/gdbm/
LICENSE=GNU GPL version 3

all:: $(PREFIX)/lib/libgdbm.so
$(PREFIX)/lib/libgdbm.so:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress configure build install
