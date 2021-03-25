include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=climetlab
export VERSION=0.1.2
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=89917568f4e697c69e0742041cb38871
DESCRIPTION=\
CliMetLab is a Python package aiming at simplifying access to climate and meteorological datasets (see https://climetlab.readthedocs.io/)
WEBSITE=https://github.com/ecmwf/climetlab
LICENSE=BSD

all:: $(PREFIX)/lib/python$(PYTHON3_SHORT_VERSION)/site-packages/climetlab-$(VERSION)-py$(PYTHON3_SHORT_VERSION).egg
$(PREFIX)/lib/python$(PYTHON3_SHORT_VERSION)/site-packages/climetlab-$(VERSION)-py$(PYTHON3_SHORT_VERSION).egg:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress python3build python3install
