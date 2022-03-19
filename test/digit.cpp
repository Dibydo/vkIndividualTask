#include "gtest/gtest.h"
#define MAX_STRING_LENGTH 1000

extern "C"
{
    #include "../include/indTask/greek.h"
}

char test_cases[] = {'I', 'V', 'X', 'L', 'C'};

TEST(greek_test, digit)
{
    int i = 0;
    ASSERT_EQ(digit(test_cases[i++]), 1);
    ASSERT_EQ(digit(test_cases[i++]), 5);
    ASSERT_EQ(digit(test_cases[i++]), 10);
    ASSERT_EQ(digit(test_cases[i++]), 50);
    ASSERT_EQ(digit(test_cases[i++]), 100);
}