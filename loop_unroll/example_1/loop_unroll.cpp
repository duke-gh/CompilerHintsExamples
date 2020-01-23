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


double get_res_no_unroll(int it_count) {
  double res{0.0};
#pragma nounroll
  for (int i = 0; i < it_count; i++) {
    res += calc(i);
  }
  return res;
}

double get_res_unroll(int it_count) {
  double res{0.0};
#pragma unroll
  for (int i = 0; i < it_count; i++) {
    res += calc(i);
  }
  return res;
}

double get_res_unroll_full(int it_count) {
  double res{0.0};
#pragma clang loop unroll(full)
  for (int i = 0; i < it_count; i++) {
    res += calc(i);
  }
  return res;
}

double get_res_unroll_12(int it_count) {
  double res{0.0};
#pragma clang loop unroll_count(12)
  for (int i = 0; i < it_count; i++) {
    res += calc(i);
  }
  return res;
}