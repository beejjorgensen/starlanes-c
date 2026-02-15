#include <string.h>
#include "ui.h"
#include "conf.h"
#include CURSES_HEADER
#ifdef HAVE_TERMIOS_H
#include <termios.h>
#endif

/**
 * Centers a piece of text on a window on the specified row.
 */
void center(WINDOW *win, int width, int row, char *s)
{
    mvwaddstr(win, row, (width - strlen(s)) / 2, s);
}

