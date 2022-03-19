// Copyright 2022 by Yaroslav Zhovtyak
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "../include/indTask/greek.h"

int digit(char roman_digit)
{
    int value;
    switch (roman_digit)
    {
    case 'I':
        value = 1;
        break;
    case 'V':
        value = 5;
        break;
    case 'X':
        value = 10;
        break;
    case 'L':
        value = 50;
        break;
    case 'C':
        value = 100;
        break;
    case 'D':
        value = 500;
        break;
    case 'M':
        value = 1000;
        break;
    case '\0':
        value = 0;
        break;
    case '\n':
        break;
    default:
        value = ERROR_CODE;
        break;
    }
    return value;
}

void number_loop(char *romanNumber, int *number)
{
    //printf("Пришло в number_loop: %s", romanNumber);
    int i = 0;
    if (romanNumber[i] == '\0') {
        *number = ERROR_CODE;
        return;
    }
    while (romanNumber[i])
    {
        if (digit(romanNumber[i]) < 0)
        {
            //printf("Invalid digit : %c", romanNumber[i]);
            *number = ERROR_CODE;
            break;
        }
        if ((strlen(romanNumber) - i) > 2)
        {
            if (digit(romanNumber[i]) < digit(romanNumber[i + 2]))
            {
                *number = ERROR_CODE;
                break;
            }
        }
        if (digit(romanNumber[i]) >= digit(romanNumber[i + 1]))
            *number += digit(romanNumber[i]);
        else
        {
            *number += (digit(romanNumber[i + 1]) - digit(romanNumber[i]));
            i++;
        }
        i++;
    }
}

int number_feeder(char *romanNumber)
{   
    int a = 0;
    number_loop(romanNumber, &a);
    return a; 
}
