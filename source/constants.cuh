#ifndef _CONSTANTS_H
#define _CONSTANTS_H

/*
 * | ---------------------------
 * | Data Type | size (byte)   |
 * | ---------------------------
 * | short     |      2        |
 * | int       |      4        |
 * | uint      |      4        |
 * | float     |      4        |
 * | double    |      8        |
 * | ---------------------------
 * | Total     | 40428 / 65536 |
 * | ---------------------------
 */

typedef struct {
    float x_min;
    float x_max;
    uint n_dim;
    uint ps;
} Configuration;

extern __constant__ float shift[100];
extern __constant__ float m_rotation[10000];
extern __constant__ Configuration params;
extern __constant__ float F_Lower;
extern __constant__ float F_Upper;
extern __constant__ float T;
extern __constant__ char S_2DAB[60];

#endif
