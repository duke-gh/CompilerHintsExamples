#include <iostream>

float get_res(float a, float b, float c, float d, float e) {
  return a * d + b * e + c * e;
}

int main() {
  float a = 500000000.0f;
  float b = -500000000.0f;
  float c = 1.0f;
  std::cout << get_res(a, b, c, 1.0f, 1.0f) << std::endl;
  return 0;
}