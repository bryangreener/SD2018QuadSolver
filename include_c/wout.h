// Copyright © 2018, Bryan Greener (https://github.com/bryangreener).
#ifndef WOUT_H
#define WOUT_H "wout.h"
#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<time.h>
void mainMenu(void);
void entryHeader(int step);
void hRule(void);
void inputError(void);
void printQF(void);
void printResult(double r1, double r2);
void writeLog(char *func, int op, double a, double b, double c);
void lm(int argc, char *argv[], double a, double b, double c, Tuple qresult);
void ld(double a, double b, double c, double d);
void lq(double a, double b, double c, double d, Tuple result);
void lvd(char *input, double result, int r);
void lvm(char *choice, int c);
void lr(char *input);
#endif
