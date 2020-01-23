#include "source2.h"
#include "source1.h"

double get_res() {
  const int it_count{1000000000};
  double res{0.0};
  for (int i = 0; i < it_count; i++) {
    res += calc_value(i, 0);
  }
  return res;
}