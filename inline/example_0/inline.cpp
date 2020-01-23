#include "inline.h"
#include <math.h>

double calc(int i) {
  return std::sin(i / 100.0) + std::cos(i / 100.0);
}

double get_res() {
  const int it_count{100000000};
  double res{0.0};
  for (int i = 0; i < it_count; i++) {
    res += calc(i);
  }
  return res;
}