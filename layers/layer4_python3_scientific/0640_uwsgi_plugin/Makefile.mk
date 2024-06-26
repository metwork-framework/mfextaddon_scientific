include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=uwsgi-plugin-python3
export VERSION=`rpm -q uwsgi | cut -d"-" -f 2`
DESCRIPTION=\
Python 3.12 plugin for UWSGI
WEBSITE=https://github.com/unbit/uwsgi
LICENSE=GPL2+

export CFLAGS="-I$(PREFIX)/../core/include"
export LDFLAGS="-L$(PREFIX)/../core/lib -lssl -lcrypto"

#We do not provide uwsgi but only python3_plugin.so based on Metwork python3
#This plugin can be added to /usr/lib64/uwsgi to be used with Metwork's python 3.12
#instead of the plugin for OS's python3 provided by the rpm uwsgi-plugin-python3
all:: $(PREFIX)/lib/uwsgi/python3_plugin.so
$(PREFIX)/lib/uwsgi/python3_plugin.so:
	mkdir -p /usr/src/uwsgi/$(VERSION)/plugins/python/
	/usr/sbin/uwsgi --build-plugin "/usr/src/uwsgi/$(VERSION)/plugins/python/ python3"
	mkdir -p $(PREFIX)/lib/uwsgi
	mv python3_plugin.so $(PREFIX)/lib/uwsgi
	rm -rf .uwsgi_plugins_builder

