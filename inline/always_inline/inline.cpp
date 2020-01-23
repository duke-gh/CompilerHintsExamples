#include "inline.h"
#include "math.h"

#ifdef WITH_INLINE
#define INLINE_OPT __attribute__((always_inline))
#else
#define INLINE_OPT
#endif


INLINE_OPT double get_first_light_value(int i) {
  double double_i = static_cast<double>(i);
  return i + double_i*double_i + i%2;
}

INLINE_OPT double get_second_light_value(int i) {

  double double_i = static_cast<double>(i);
  return i*0.1 + double_i*double_i*double_i*0.3 + i/2.0;
}

INLINE_OPT double get_first_heavy_value(int num, double r) {
   int reminder = num % 3;
   switch (reminder) {
    case 0:
      num = num + 15;
    case 1:
      num = 2 * num;
    case 2:
      num = num - 4;
  }
  int reminder2 = num % 3;
  switch (reminder2) {
    case 0:
      num = num + 15;
    case 1:
      num = 2 * num;
    case 2:
      num = num - 4;
  }
  double double_i = static_cast<double>(num);
  double temp{0.0};
  for (int i = 1; i < num; i++) {
    temp += sin(i)*r;
  }
  if (temp < 0 && r > 0) {
    temp = log(r) + tan(r);
  }
  return num + double_i*r + double_i*double_i*double_i + double_i/double_i*double_i*0.5 + num%7 + temp;
}

INLINE_OPT double get_second_heavy_value(int num, double r) {
  int reminder = num % 3;
  switch (reminder) {
    case 0:
      num = num + 12;
    case 1:
      num = 3 * num;
    case 2:
      num = num - 2;
  }
  int reminder2 = num % 3;
  switch (reminder2) {
    case 0:
      num = num + 12;
    case 1:
      num = 4 * num;
    case 2:
      num = num - 15;
  }
  double double_i = static_cast<double>(num);
  double temp{0.0};
  for (int i = 1; i < num; i++) {
    temp += cos(i)*r;
  }
  if (temp > 0  && r > 0) {
    temp = log(r) + tan(r);
  }
  return num*0.1 + double_i*double_i/2.0 + double_i*r*double_i*0.3 + double_i*double_i*double_i*0.8 + num/15.0 + temp;
}


INLINE_OPT double get_res(bool first) {
  const int it_count{1000000000};
  double res{0.0};
  for (int i = 0; i < it_count; i++) {
      res += get_first_light_value(i) + get_second_light_value(i + 1);
      if (i < 10) {
        res += get_first_heavy_value(i, res);
        res += get_second_heavy_value(i, res);
      }
      res += get_second_light_value(i) + get_first_light_value(i - 1);
  }
  return res;
}