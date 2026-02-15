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

/**
 * Sets up the color pairs
 */
void color_setup(void)
{
    init_pair(1, COLOR_BLUE, COLOR_BLACK);
    init_pair(2, COLOR_RED, COLOR_BLACK);
    init_pair(3, COLOR_GREEN, COLOR_BLACK);
    init_pair(4, COLOR_YELLOW, COLOR_BLACK);
    init_pair(5, COLOR_MAGENTA, COLOR_BLACK);
    init_pair(6, COLOR_CYAN, COLOR_BLACK);
    init_pair(7, COLOR_WHITE, COLOR_BLACK);
    init_pair(8, COLOR_YELLOW, COLOR_BLUE);
    init_pair(9, COLOR_WHITE, COLOR_BLUE);
    init_pair(10, COLOR_BLACK, COLOR_YELLOW);
    init_pair(11, COLOR_BLACK, COLOR_WHITE);
    init_pair(12, COLOR_BLACK, COLOR_RED);
    init_pair(13, COLOR_BLACK, COLOR_BLUE);
    init_pair(14, COLOR_BLACK, COLOR_GREEN);
}

