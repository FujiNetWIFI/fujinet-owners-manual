GUIDE=fujinet-owners-manual.xml

.PHONY:	all

all:	build

build:	html

html:
	mkdir -p build/html
	xsltproc   \
		--output  build/html \
		/usr/share/xml/docbook/stylesheet/docbook-xsl/xhtml5/docbook.xsl \
		$(GUIDE)
