TARGETS=silica silica-judge

LIB=lib/
DOC=doc/
DOCIMG=doc/img/

APPDIR=/usr/share/silica/
BINDIR=/usr/bin/

SILICA=silica
SILICA_JUDGE=silica-judge
LAUNCHER=silica-launcher.sh

install: $(TARGETS) $(LIB) $(DOC) $(LAUNCHER)
	install -d $(APPDIR)
	install -m 755 -s -t $(APPDIR) $(TARGETS)
	install -d $(APPDIR)$(LIB)
	install -m 644 -t $(APPDIR)$(LIB) $(LIB)*
	install -d $(APPDIR)$(DOC)
	install -m 644 -t $(APPDIR)$(DOC) $(DOC)*.html
	install -d $(APPDIR)$(DOCIMG)
	install -m 644 -t $(APPDIR)$(DOCIMG) $(DOCIMG)*.png
	install -m 755 -t $(APPDIR) $(LAUNCHER)

	if test -e "$(BINDIR)$(SILICA)"; \
	then \
		rm $(BINDIR)$(SILICA); \
	fi;
	ln -s "$(APPDIR)$(LAUNCHER)" "$(BINDIR)$(SILICA)"

remove:uninstall

uninstall:
	rm -rf "$(APPDIR)"
	rm -rf "$(BINDIR)$(SILICA)"
