include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package_python3.mk

export NAME=esmf
export VERSION=8_0_1
export VERSION_PYTHON=8.0.0
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=97dc88d2a5055f77745250572965df52
DESCRIPTION=\
Earth System Modeling Framework (ESMF) Python Interface (ESMPy)
WEBSITE=http://www.earthsystemmodeling.org
LICENSE=University of Illinois NCSA Open Source License (https://opensource.org/licenses/NCSA)
export EXPLICIT_NAME=$(NAME)-ESMF_$(VERSION)

export ESMF_DIR=$(CURDIR)/build/$(EXPLICIT_NAME)
export ESMF_INSTALL_PREFIX=$(PREFIX)/../scientific/$(NAME)
export ESMF_INSTALL_HEADERDIR=$(ESMF_INSTALL_PREFIX)/include
export ESMF_INSTALL_MODDIR=$(ESMF_INSTALL_PREFIX)/mod
export ESMF_INSTALL_LIBDIR=$(ESMF_INSTALL_PREFIX)/lib
export ESMF_INSTALL_BINDIR=$(ESMF_INSTALL_PREFIX)/bin
export ESMF_INSTALL_DOCDIR=$(ESMF_INSTALL_PREFIX)/doc
export ESMF_NETCDF=nc-config

all:: $(PREFIX)/lib/python$(PYTHON3_SHORT_VERSION)/site-packages/ESMPy-$(VERSION_PYTHON)-py$(PYTHON3_SHORT_VERSION).egg-info
$(PREFIX)/lib/python$(PYTHON3_SHORT_VERSION)/site-packages/ESMPy-$(VERSION_PYTHON)-py$(PYTHON3_SHORT_VERSION).egg-info:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXPLICIT_NAME="$(EXPLICIT_NAME)" download uncompress
	cd build/$(EXPLICIT_NAME)/src/addon/ESMPy && python setup.py build --ESMFMKFILE=$(ESMF_INSTALL_LIBDIR)/esmf.mk && python setup.py install --prefix=$(PREFIX)
