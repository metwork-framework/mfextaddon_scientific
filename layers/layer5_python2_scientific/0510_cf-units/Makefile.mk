include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=cf-units
export VERSION=2.1.1
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=320ab2adfc543947a740c434e6aa2fdf
DESCRIPTION=\
Units of measure as defined by the Climate and Forecast (CF) metadata conventions, supporting Unidata/UCAR UDUNITS-2 library, and the cftime calendar functionality
WEBSITE=https://scitools.org.uk/cf-units
LICENSE=GNU Lesser General Public License (LGPLv3)

all:: $(PREFIX)/lib/python$(PYTHON2_SHORT_VERSION)/site-packages/cf_units-$(VERSION)-py$(PYTHON2_SHORT_VERSION)-linux-x86_64.egg
$(PREFIX)/lib/python$(PYTHON2_SHORT_VERSION)/site-packages/cf_units-$(VERSION)-py$(PYTHON2_SHORT_VERSION)-linux-x86_64.egg:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXTRACFLAGS="-I$(PREFIX)/../scientific/include" EXTRALDFLAGS="-L$(PREFIX)/../scientific/lib" download uncompress python2build python2install
