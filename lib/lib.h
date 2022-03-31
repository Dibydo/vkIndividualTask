// Copyright 2022 by Yaroslav Zhovtyak

#ifndef LIB_LIB_H_
#define LIB_LIB_H_

#include "ECG.h"

size_t count_R_peaks(const ECG* ecg, size_t* user_cores);

#endif
