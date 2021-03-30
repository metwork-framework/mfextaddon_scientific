include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=iris
export VERSION=2.1.0
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=2d2fb42b57d43b99074a31f877c47635
export ARCHIV=v$(VERSION)
DESCRIPTION=\
IRIS is a powerful, format-agnostic, and community-driven Python library for analysing and visualising Earth science data
WEBSITE=https://scitools.org.uk/iris
LICENSE=GNU Lesser General Public License (LGPLv3)

all:: $(PREFIX)/lib/python$(PYTHON2_SHORT_VERSION)/site-packages/scitools_iris-$(VERSION)-py$(PYTHON2_SHORT_VERSION).egg
$(PREFIX)/lib/python$(PYTHON2_SHORT_VERSION)/site-packages/scitools_iris-$(VERSION)-py$(PYTHON2_SHORT_VERSION).egg:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard ARCHIV=$(ARCHIV) PREFIX=$(PREFIX) EXTRACFLAGS="-I$(PREFIX)/../scientific_core/include" EXTRALDFLAGS="-L$(PREFIX)/../scientific_core/lib" download uncompress python2build python2install
