#include "inline.h"

#ifdef WITH_INLINE
#define INLINE inline
#else
#define INLINE
#endif

INLINE double calc_value(int i, int branch) {
  switch (i) {
    case 0:
      i = i + 15;
    case 1:
      i = 2 * i;
    case 2:
      i = i - 4;
  }

  switch (i) {
    case 0:
      i = i + 15;
    case 1:
      i = 2 * i;
    case 2:
      i = i - 4;
  }

  switch (i) {
    case 0:
      i = i + 15;
    case 1:
      i = 2 * i;
    case 2:
      i = i - 4;
  }

  switch (i) {
    case 0:
      i = i + 15;
    case 1:
      i = 2 * i;
    case 2:
      i = i - 4;
  }

  switch (i) {
    case 0:
      i = i + 15;
    case 1:
      i = 2 * i;
    case 2:
      i = i - 4;
  }

  switch (i) {
    case 0:
      i = i + 15;
    case 1:
      i = 2 * i;
    case 2:
      i = i - 4;
  }

  switch (i) {
    case 0:
      i = i + 15;
    case 1:
      i = 2 * i;
    case 2:
      i = i - 4;
  }

  double di = static_cast<double>(i);
  if (branch) {
    return i + di * di + di * di * di + di * di * di * 0.2 + i % 2;
  } else {
    return i * 0.1 + di * di / 2.0 + di * di * di * 0.3 + di * di * di * 0.4 + i / 2.0;
  }
}

double get_first_value(int i, int branch) {
  return calc_value(i, branch);
}

double get_second_value(int i, int branch) {
  return calc_value(i, branch);
}

double get_res() {
  const int it_count{100000000};
  double res{0.0};
  for (int i = 0; i < it_count; i++) {
    res += get_first_value(i, 0)  + get_second_value(i, 0);
  }
  return res;
}
