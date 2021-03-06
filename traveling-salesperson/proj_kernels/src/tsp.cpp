/*
 * Copyright 2021 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at:
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "tsp.h"

typedef unsigned short uint16_t;
#define UINT_MAX 4294967295U

// tsp.cpp

constexpr long int factorial(const int N)
{
  long int ret = 1;
  for(int i = 0 ; i < N; ++i)
    ret = ret * (i+1);
  return ret;
}


//
//  The function getDistance takes two arrays as inputs:
//  - An array of length N for the permutation indices of the cities
//  - An array of length N*N containing the distances between each pair of cities
//

unsigned int getDistance(const int perm[N], const uint16_t distances[][N])
{
  unsigned int ret = 0;
  for(int i = 0; i < N-1; ++i)
    ret += distances[perm[i]][perm[i+1]];
  return ret;

}


unsigned int compute(const unsigned long int i_, const uint16_t distances[][N])
{
  #pragma HLS INLINE

  unsigned long int i = i_;
  int perm[N] = {0};

  // The permutation generator is composed of two parts:
  // 1. Represent the loop index into a factorial base
  // 2. Generates the permutation vector 'perm'
  //
  // It uses this algorithm: https://stackoverflow.com/a/7919887/11316188
  // More info here: https://en.wikipedia.org/wiki/Factorial_number_system
  for (int k = 0; k < N; ++k) {
    perm[k] = i / factorial(N - 1 - k);
    i = i % factorial(N - 1 - k);
  }

  for (char k = N - 1; k > 0; --k)
    for (char j = k - 1; j >= 0; --j)
      perm[k] += (perm[j] <= perm[k]);

  // This is perm[] content for N=4 across all 3!=6 iterations:
  // 0 | 1 | 2 | 3
  // 0 | 1 | 3 | 2
  // 0 | 2 | 1 | 3
  // 0 | 2 | 3 | 1
  // 0 | 3 | 1 | 2
  // 0 | 3 | 2 | 1

  return getDistance(perm,distances);

}

extern "C" {

// https://github.com/Xilinx/Vitis_Accel_Examples/blob/master/cpp_kernels/dataflow_stream/src/adder.cpp
// https://stackoverflow.com/questions/8767166/passing-a-2d-array-to-a-c-function

void tsp(uint16_t (*distances)[N], unsigned int* shortestDistance)
{
    // Main loop with (N-1)! iterations as one city is fixed
    constexpr long int factorialN = factorial(N-1);
    unsigned int candidate = UINT_MAX;
    unsigned int computed = 0;
    loop_compute: for( unsigned long int i_ = 0; i_ < factorialN; i_ += 1 )
    {
      #pragma HLS pipeline II=1
      computed = compute(i_, distances);
      candidate = computed < candidate ? computed : candidate;
    }

    // Last candidate from loop above holds the shortest distance
    *shortestDistance = candidate;

}
}
