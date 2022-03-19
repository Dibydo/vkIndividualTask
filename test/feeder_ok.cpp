#include "gtest/gtest.h"
#define MAX_STRING_LENGTH 1000

extern "C"
{
    #include "../include/indTask/greek.h"
}

char test_cases[][MAX_STRING_LENGTH] = {"X", "XVII", "CVI", "DIV", "DCIII", "IV", "IX", "XXIX"};

TEST(greek_test, feeder_ok)
{
    int i = 0;
    ASSERT_EQ(number_feeder(test_cases[i++]), 10);
    ASSERT_EQ(number_feeder(test_cases[i++]), 17);
    ASSERT_EQ(number_feeder(test_cases[i++]), 106);
    ASSERT_EQ(number_feeder(test_cases[i++]), 504);
    ASSERT_EQ(number_feeder(test_cases[i++]), 603);
    ASSERT_EQ(number_feeder(test_cases[i++]), 4);
    ASSERT_EQ(number_feeder(test_cases[i++]), 9);
    ASSERT_EQ(number_feeder(test_cases[i++]), 29);
}