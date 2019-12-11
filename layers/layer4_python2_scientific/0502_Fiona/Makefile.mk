include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

# Fiona needs C++11 to build (not natively available on CentOS6).
# So we build it separately (not with pip install on 0500_extra_packages)
# with temporary scl if gcc < 4.8
export NAME=Fiona
export VERSION=1.8.6
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=f28d611a1da771e87bab9accf6587e87
DESCRIPTION=\
FIONA is OGR s neat and nimble API for Python programmers
WEBSITE=https://github.com/Toblerity/Fiona
LICENSE=BSD

GCC_VERSION = `gcc --version | head -1 | cut -d" " -f3 | cut -d"." -f1-2`
DEVTOOLSET = 7

ifeq ($(shell expr $(GCC_VERSION) \< "4.8" ), 1)

all:: $(PREFIX)/lib/python$(PYTHON2_SHORT_VERSION)/site-packages/Fiona-$(VERSION)-py$(PYTHON2_SHORT_VERSION)-linux-x86_64.egg
$(PREFIX)/lib/python$(PYTHON2_SHORT_VERSION)/site-packages/Fiona-$(VERSION)-py$(PYTHON2_SHORT_VERSION)-linux-x86_64.egg:
	scl enable devtoolset-$(DEVTOOLSET) '$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress python2build python2install'

else

all:: $(PREFIX)/lib/python$(PYTHON2_SHORT_VERSION)/site-packages/Fiona-$(VERSION)-py$(PYTHON2_SHORT_VERSION)-linux-x86_64.egg
$(PREFIX)/lib/python$(PYTHON2_SHORT_VERSION)/site-packages/Fiona-$(VERSION)-py$(PYTHON2_SHORT_VERSION)-linux-x86_64.egg:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress python2build python2install

endif
