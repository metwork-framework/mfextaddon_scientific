include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=udunits
export VERSION=2.2.28
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=58259d94f766c13b5b0cf1aed92ebbe3
DESCRIPTION=\
API and utility for arithmetic manipulation of units of physical quantities
WEBSITE=http://www.unidata.ucar.edu/software/udunits
LICENSE=GPLv2 and GPLv3 compatible (derived from BSD with additional patent wording : https://fedoraproject.org/wiki/Licensing/UCAR)

all:: $(PREFIX)/bin/udunits2
$(PREFIX)/bin/udunits2:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) OPTIONS="--enable-static=no" download uncompress autoreconf configure build install
