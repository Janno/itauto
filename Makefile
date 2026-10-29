# Compatibility entry points; Dune owns dependency tracking and installation.
DUNE ?= dune
DUNEFLAGS ?=

.PHONY: all test install uninstall clean

all:
	$(DUNE) build $(DUNEFLAGS) @install

test:
	$(DUNE) runtest $(DUNEFLAGS)

install:
	$(DUNE) install $(DUNEFLAGS) coq-itauto

uninstall:
	$(DUNE) uninstall $(DUNEFLAGS) coq-itauto

clean:
	$(DUNE) clean
