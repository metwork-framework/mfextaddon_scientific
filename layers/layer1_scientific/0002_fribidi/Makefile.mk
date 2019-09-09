include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=fribidi
export VERSION=1.0.5
export EXTENSION=tar.bz2
export CHECKTYPE=MD5
export CHECKSUM=0f97f65038545340316ec0f4bd53df0b
DESCRIPTION=\
Fribidi is a free implementation of the Unicode Bidirectional (BiDi) Algorithm
WEBSITE=ihttps://github.com/fribidi/fribidi/
LICENSE=GLP2

all:: $(PREFIX)/lib/libfribidi.so
$(PREFIX)/lib/libfribidi.so:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress configure build install
