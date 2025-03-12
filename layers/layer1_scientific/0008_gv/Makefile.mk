include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=gv
export VERSION=3.7.4
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=80035c43285781b68361acda09ad7441
DESCRIPTION=\
GNU GV allows viewing and navigating PostScript and PDF documents on an X display, by providing a graphical user interface for the Ghostscript interpreter
WEBSITE=https://github.com/william8000/gv
LICENSE=GNU GPL

all:: $(PREFIX)/bin/gv
$(PREFIX)/bin/gv:
	rm -f $(PREFIX)/bin/ghostview
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) download uncompress configure build install
	cd $(PREFIX)/bin && ln -s gv ghostview
