-include adm/root.mk
-include $(MFEXT_HOME)/share/main_root.mk

all::
	cd layers && $(MAKE)

clean::
	cd layers && $(MAKE) clean
