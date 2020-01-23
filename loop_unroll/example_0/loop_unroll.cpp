#include <math.h>


double calc(int i) {
  return std::sin(i);
}

double get_res(int it_count) {
  double res{0.0};
  for (int i = 0; i < it_count; i++) {
    res += calc(i);
  }
  return res;
}