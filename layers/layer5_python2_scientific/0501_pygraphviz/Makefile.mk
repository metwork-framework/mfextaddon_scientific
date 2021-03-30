include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

#pygraphviz doesn't build correctly with pypi when library graphviz is built
#within mfext. So we build it separately (not in 0500_extra_packages)
export NAME=pygraphviz
export VERSION=1.5
export EXTENSION=zip
export CHECKTYPE=MD5
export CHECKSUM=c186f5f6567e523a862063fc62ddcd2f
DESCRIPTION=\
PYGRAPHVIZ is a Python interface to Graphviz
WEBSITE=http://pygraphviz.github.io/
LICENSE=BSD

all:: $(PREFIX)/lib/python$(PYTHON2_SHORT_VERSION)/site-packages/pygraphviz-1.5-py$(PYTHON2_SHORT_VERSION).egg-info
$(PREFIX)/lib/python$(PYTHON2_SHORT_VERSION)/site-packages/pygraphviz-1.5-py$(PYTHON2_SHORT_VERSION).egg-info:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) EXTRACFLAGS="-I$(PREFIX)/../scientific/include" EXTRALDFLAGS="-L$(PREFIX)/../scientific/lib" EXTRAPKGCONFIGPATH="$(PREFIX)/../scientific/lib/pkgconfig" download uncompress python2build python2install
