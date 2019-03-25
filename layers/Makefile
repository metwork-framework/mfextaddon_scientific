.PHONY: all clean download_archive doc layerdir

include ../adm/root.mk
include $(MFEXT_HOME)/share/subdir_root.mk

SUBDIRS=$(shell ls -d layer* |grep -v "\.mk")

all:: layerdir
	@for SUBDIR in $(SUBDIRS); do OLDPWD=`pwd`; cd $$SUBDIR || exit 1; $(MAKE) all || exit 1; cd $${OLDPWD}; done

clean::
	@for SUBDIR in $(SUBDIRS); do OLDPWD=`pwd`; cd $$SUBDIR || exit 1; $(MAKE) clean || exit 1; cd $${OLDPWD}; done

doc:
	@for SUBDIR in $(SUBDIRS); do OLDPWD=`pwd`; cd $$SUBDIR || exit 1; $(MAKE) doc || exit 1; cd $${OLDPWD}; done

download_archive:
	rm -Rf download_archive ; mkdir download_archive
	@for SUBDIR in $(SUBDIRS); do OLDPWD=`pwd`; cd $$SUBDIR || exit 1; $(MAKE) download_archive || exit 1; cd $${OLDPWD}; done

layerdir:
	@if ! test -d $(MFEXT_HOME)/opt; then mkdir $(MFEXT_HOME)/opt; fi
