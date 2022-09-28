include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package_python3.mk

export NAME=esmf
export VERSION=8.3.0
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=1c63452453fc913b2990f3add7d7aff3
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

#For some reason, we have to temporarly modify install_scripts.py in setuptools
#It will probably not be necessary with release 8.4 with pyproject.toml replacing setup.py
export INSTALL_SCRIPTS=$(PREFIX)/../python3_core/lib/python$(PYTHON3_SHORT_VERSION)/site-packages/setuptools/_distutils/command/install_scripts.py

all:: $(PYTHON3_SITE_PACKAGES)/ESMPy-$(VERSION).dist-info
$(PYTHON3_SITE_PACKAGES)/ESMPy-$(VERSION).dist-info:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress
	cp -p $(INSTALL_SCRIPTS) $(INSTALL_SCRIPTS).original
	cat $(INSTALL_SCRIPTS).original |sed "s/self.set_undefined_options('build', ('build_scripts', 'build_dir'))/#self.set_undefined_options('build', ('build_scripts', 'build_dir'))/" > $(INSTALL_SCRIPTS)
	cd build/$(NAME)-$(VERSION)/src/addon/ESMPy && unsafe_pip install --prefix=$(PREFIX) --src=$(PYTHON3_SITE_PACKAGES) . && rm -f $(PYTHON3_SITE_PACKAGES)/ESMPy-$(VERSION).dist-info/direct_url.json
	mv $(INSTALL_SCRIPTS).original $(INSTALL_SCRIPTS)
