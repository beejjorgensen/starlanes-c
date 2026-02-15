#ifndef UI_H
#define UI_H

#include "conf.h"
#include CURSES_HEADER
#ifdef HAVE_TERMIOS_H
#include <termios.h>
#endif

void center(WINDOW * win, int width, int row, char *s);

#endif
