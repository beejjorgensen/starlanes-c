# Set this to your curses lib to link to:
CURSESLIB=ncurses

# Things you can override during install:
prefix=/usr
DESTDIR=

CCOPTS=-Wall -Wextra

TARGET=starlanes

.PHONY: all clean pristine

all: $(TARGET)

$(TARGET): starlanes.c
	$(CC) $(CCOPTS) -o $@ $^ -l$(CURSESLIB)

install:
	cp $(TARGET) $(DESTDIR)/$(prefix)/bin/$(TARGET)
	chown root:root $(DESTDIR)/$(prefix)/bin/$(TARGET)
	chmod 755 $(DESTDIR)/$(prefix)/bin/$(TARGET)

	cp $(TARGET).6 $(DESTDIR)/$(prefix)/share/man/man6/$(TARGET).6
	chown root:root $(DESTDIR)/$(prefix)/share/man/man6/$(TARGET).6
	chmod 644 $(DESTDIR)/$(prefix)/share/man/man6/$(TARGET).6

clean:
	rm -f *.o

pristine: clean
	rm -f $(TARGET)
