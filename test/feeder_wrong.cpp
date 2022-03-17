#include "gtest/gtest.h"
#include <iostream>
#define MAX_STRING_LENGTH 1000
extern "C"
{
    #include "../include/indTask/greek.h"
}
char test_cases[][MAX_STRING_LENGTH] = {"IXX", "VC", "DMMD", "", "ERROR"};

TEST(greek_test, feeder_wrong)
{
    int i = 0;
    ASSERT_EQ(number_feeder(test_cases[i++]), -1);
    ASSERT_EQ(number_feeder(test_cases[i++]), -1);
    ASSERT_EQ(number_feeder(test_cases[i++]), -1);
    ASSERT_EQ(number_feeder(test_cases[i++]), -1);
    ASSERT_EQ(number_feeder(test_cases[i++]), -1);
}