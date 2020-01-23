#include "inline.h"
#include <math.h>

#ifdef WITH_INLINE_ONE
#define INLINE_ONE inline
#else
#define INLINE_ONE
#endif

#ifdef WITH_INLINE_ALL
#undef INLINE_ONE
#define INLINE_ONE inline
#define INLINE_ALL inline
#else
#define INLINE_ALL
#endif

INLINE_ONE double calc_value(int i, int branch) {
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

INLINE_ALL double get_first_value(int i) {
  return calc_value(i, 0);
}

INLINE_ALL double get_second_value(int i) {
  return calc_value(i, 1);
}

double get_res() {
  const int it_count{100000000};
  double res{0.0};
  for (int i = 0; i < it_count; i++) {
    res += get_first_value(i) + get_second_value(i);
  }
  return res;
}
