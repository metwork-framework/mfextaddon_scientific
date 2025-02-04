include ../../../adm/root.mk
include $(MFEXT_HOME)/share/simple_layer.mk

all:: $(PREFIX)/share/magics $(PYTHON3_SITE_PACKAGES)/remove_argparse

$(PREFIX)/share/magics:
	cd $(PREFIX)/share && ln -s ../../scientific/share/magics magics

# argparse is a "wrong" dependency of conflator (argparse.py is now included in the Python3 standard library)
# until argparse is removed from conflator dependencies, we need to remove it after install
$(PYTHON3_SITE_PACKAGES)/remove_argparse:
	cd $(PYTHON3_SITE_PACKAGES) && rm -rf argparse* && rm -r $(PREFIX)/share/metwork_packages/argparse.yaml

