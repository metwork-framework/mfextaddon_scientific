include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package_python3.mk

export NAME=esmpy
export VERSION=8.6.0
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=97dbb784a44f80a08152fe5509afea0c
DESCRIPTION=\
Earth System Modeling Framework (ESMF) Python Interface (ESMPy)
WEBSITE=http://www.earthsystemmodeling.org
LICENSE=University of Illinois NCSA Open Source License (https://opensource.org/licenses/NCSA)

export ESMF_DIR=$(CURDIR)/build/$(NAME)-$(VERSION)
export ESMF_INSTALL_PREFIX=$(PREFIX)/../scientific/$(NAME)
export ESMF_INSTALL_HEADERDIR=$(ESMF_INSTALL_PREFIX)/include
export ESMF_INSTALL_MODDIR=$(ESMF_INSTALL_PREFIX)/mod
export ESMF_INSTALL_LIBDIR=$(ESMF_INSTALL_PREFIX)/lib
export ESMF_INSTALL_BINDIR=$(ESMF_INSTALL_PREFIX)/bin
export ESMF_INSTALL_DOCDIR=$(ESMF_INSTALL_PREFIX)/doc
export ESMF_NETCDF=nc-config
export ESMFMKFILE=$(ESMF_INSTALL_LIBDIR)/esmf.mk
export EXPLICIT_NAME=esmf-$(VERSION)
#
# Change version in version.patch if VERSION is changing

all:: $(PYTHON3_SITE_PACKAGES)/esmpy-$(VERSION).dist-info
$(PYTHON3_SITE_PACKAGES)/esmpy-$(VERSION).dist-info:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXPLICIT_NAME="$(EXPLICIT_NAME)" download uncompress
	cd build/$(EXPLICIT_NAME)/src/addon/esmpy && unsafe_pip install --no-build-isolation --prefix=$(PREFIX) --src=$(PYTHON3_SITE_PACKAGES) . && rm -f $(PYTHON3_SITE_PACKAGES)/esmpy-$(VERSION).dist-info/direct_url.json
