#
# Makefile for Starlanes
#

CC=gcc
CCOPTS=-Wall
CURSESLIB=ncurses
INSTALLDIR=/usr/local

starlanes: starlanes.c
	$(CC) $(CCOPTS) -o starlanes starlanes.c -l$(CURSESLIB)

install:
	cp starlanes $(INSTALLDIR)/games
	cp starlanes.6 $(INSTALLDIR)/man/man6
	chown bin:bin $(INSTALLDIR)/games/starlanes
	chown root:root $(INSTALLDIR)/man/man6/starlanes.6
	chmod 755 $(INSTALLDIR)/games/starlanes
	chmod 444 $(INSTALLDIR)/man/man6/starlanes.6

# fakeinstall just echos the install commands:
fakeinstall:
	@echo cp starlanes $(INSTALLDIR)/games
	@echo cp starlanes.6 $(INSTALLDIR)/man/man6
	@echo chown bin:bin $(INSTALLDIR)/games/starlanes
	@echo chown root:root $(INSTALLDIR)/man/man6/starlanes.6
	@echo chmod 755 $(INSTALLDIR)/games/starlanes
	@echo chmod 444 $(INSTALLDIR)/man/man6/starlanes.6

