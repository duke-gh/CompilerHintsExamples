#include "source1.h"

int calc_value(int i, int branch) {
  int original_i = i;
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

  if (branch) {
    return i;
  } else {
    return original_i;
  }
}