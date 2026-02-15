include conf.make

DESTDIR=
CCOPTS=-Wall -Wextra
TARGET=starlanes

SRCS=$(wildcard *.c)
HEADERS=$(wildcard *.h)

.PHONY: all clean pristine

BINDIR=$(DESTDIR)$(prefix)/bin
MANDIR=$(DESTDIR)$(mandir)

all: $(TARGET)

$(TARGET): $(SRCS) $(HEADERS)
	$(CC) $(CCOPTS) -o $@ $(SRCS) -l$(CURSES_LIBRARY)

install:
	install -d $(BINDIR)
	install -m 755 $(TARGET) $(BINDIR)/$(TARGET)
	install -d $(MANDIR)/man6
	install -m 644 $(TARGET).6 $(MANDIR)/man6/$(TARGET).6

clean:
	rm -f *.o

pristine: clean
	rm -f conf.make conf.h
	rm -f $(TARGET)
