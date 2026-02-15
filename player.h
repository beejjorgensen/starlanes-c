#ifndef PLAYER_H
#define PLAYER_H

#include "consts.h"

typedef struct {
    char name[100];
    int holdings[NUMCO];
    int svalue;                 // Stock value -- not always accurate!!
    int cash;
} PLAYER;

void holding_bonus(void);

#endif
