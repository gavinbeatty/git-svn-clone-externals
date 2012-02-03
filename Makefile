.SUFFIXES:
SHELL = /bin/sh

INSTALL_DATA = install -m 0644
INSTALL_EXE = install -m 0755
INSTALL_DIR = install -d -m 0755

DESTDIR ?=
PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin

help:
	@echo Targets: install

SOURCES = git-svn-check-unpushed \
git-svn-clone-externals \
git-svn-externals-check \
git-svn-externals-update

install: $(SOURCES)
	@$(INSTALL_DIR) $(DESTDIR)$(BINDIR)
	$(INSTALL_EXE) $(SOURCES) $(DESTDIR)$(BINDIR)

.PHONY: help install
