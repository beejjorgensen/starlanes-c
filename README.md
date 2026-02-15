# Star Lanes

This is a C version of the classic space trading game [_Star
Lanes_](https://github.com/beejjorgensen/starlanes-info) that I wrote
back in the mid 1990s based on the Osborne FOG disk source.

I was in college and my skills were poor, so the source is just one
gigantic file. Maybe I'll break that up since it's so offensive.

## Building and Installation

Type "make" to build the `starlanes` binary.

You can override the following macros:

* `CURSESLIB=ncurses`: this is added to the command line as `-lncurses`.
* `CC`: which compiler to use.
* `CCOPTS=-Wall -Wextra`: compiler options.
* `prefix=/usr`: where things are installed relative to root.
* `DESTDIR`: if you want to set another "root" for the install.

## License

This was GPL2, but I've changed it to the
[Unlicense](https://unlicense.org/). I believe other people have added
onto the GPL version, but this one (v1.2.2) was entirely written by me
back in the day.

Enjoy!

---

beej@beej.us

