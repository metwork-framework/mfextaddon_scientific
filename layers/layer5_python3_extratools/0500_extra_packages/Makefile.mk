include ../../../adm/root.mk
include $(MFEXT_HOME)/share/python3_layer.mk

export PY_NUM=$(shell echo $(PYTHON_SHORT_VERSION) | sed -e 's/\.//')

all:: $(PYTHON3_SITE_PACKAGES)/aspose/.clean_aspose

$(PYTHON3_SITE_PACKAGES)/aspose/.clean_aspose:
	cd $(PYTHON3_SITE_PACKAGES)/aspose && ls -1 *.cpython-*.so | grep -v $(PY_NUM) | xargs rm -f
	touch $(PYTHON3_SITE_PACKAGES)/aspose/.clean_aspose
