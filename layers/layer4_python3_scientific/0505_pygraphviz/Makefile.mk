include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

#pygraphviz doesn't build correctly with pypi when library graphviz is built
#within mfext. So we build it separately (not in 0500_extra_packages)
export NAME=pygraphviz
export VERSION=1.6
export EXTENSION=zip
export CHECKTYPE=MD5
export CHECKSUM=4fd63c6feccb3c80be3cf640fe8285f0
DESCRIPTION=\
PYGRAPHVIZ is a Python interface to Graphviz
WEBSITE=http://pygraphviz.github.io/
LICENSE=BSD

all:: $(PREFIX)/lib/python$(PYTHON3_SHORT_VERSION)/site-packages/pygraphviz
$(PREFIX)/lib/python$(PYTHON3_SHORT_VERSION)/site-packages/pygraphviz:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXTRACFLAGS="-I$(PREFIX)/../scientific/include" EXTRALDFLAGS="-L$(PREFIX)/../scientific/lib" EXTRAPKGCONFIGPATH="$(PREFIX)/../scientific/lib/pkgconfig" download uncompress python3build python3install_pip
