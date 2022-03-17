#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "../include/indTask/greek.h"

int digit(char roman_digit)
{
    int value;
    if (roman_digit == 'I')
    {
        value = 1;
    }
    else if (roman_digit == 'V')
    {
        value = 5;
    }
    else if (roman_digit == 'X')
    {
        value = 10;
    }
    else if (roman_digit == 'L')
    {
        value = 50;
    }
    else if (roman_digit == 'C')
    {
        value = 100;
    }
    else if (roman_digit == 'D')
    {
        value = 500;
    }
    else if (roman_digit == 'M')
    {
        value = 1000;
    }
    else if (roman_digit == '\0')
    {
        value = 0;
    }
    else
    {
        value = -1;
    }
    return value;
}

void number_loop(char *romanNumber, int *number)
{
    int i = 0;
    if (romanNumber[i] == '\0') {
        *number = -1;
        return;
    }
    if (strlen(romanNumber) == 2) {
        if (digit(romanNumber[i]) < digit(romanNumber[i + 1])) {
            *number = -1;
            return;
        }
    }
    while (romanNumber[i])
    {
        if (digit(romanNumber[i]) < 0)
        {
            //printf("Invalid digit : %c", romanNumber[i]);
            *number = -1;
            break;
        }
        if ((strlen(romanNumber) - i) > 2)
        {
            if (digit(romanNumber[i]) < digit(romanNumber[i + 2]))
            {
                //printf("Invalid number");
                *number = -1;
                break;
            }
        }
        if (digit(romanNumber[i]) >= digit(romanNumber[i + 1]))
            *number = *number + digit(romanNumber[i]);
        else
        {
            *number = *number + (digit(romanNumber[i + 1]) - digit(romanNumber[i]));
            i++;
        }
        i++;
    }
}

int number_feeder(char *romanNumber)
{
    int a = 0;
    number_loop(romanNumber, &a);
    printf("%d", a);
    return a; 
}