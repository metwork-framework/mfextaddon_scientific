include ../../../adm/root.mk
include $(MFEXT_HOME)/share//simple_layer.mk

all:: $(PREFIX)/lib/python$(PYTHON3_SHORT_VERSION)/site-packages/cartopy/io/.url_naturalearth_fixed

$(PREFIX)/lib/python$(PYTHON3_SHORT_VERSION)/site-packages/cartopy/io/.url_naturalearth_fixed:
	cd $(PREFIX)/lib/python$(PYTHON3_SHORT_VERSION)/site-packages/cartopy/io/ && cat shapereader.py | sed -e 's/naciscdn.org\/naturalearth\/{resolution}/naturalearth.s3.amazonaws.com\//' | sed -e 's/\/{category}/{resolution}_{category}/' > shapereader.py.new && mv shapereader.py.new shapereader.py && touch .url_naturalearth_fixed
