#include <iostream>
#include <chrono>
#include "branch.h"

double get_res() {
  constexpr int it_count{1000000000};
  double res{0.0};
  for (int i = 0; i < it_count; i++) {
    res += calc(-1 * i);
  }
  return res;
}



int main() {
  double res{0.0};
  const auto start = std::chrono::high_resolution_clock::now().time_since_epoch().count();
  res = get_res();
  const auto end = std::chrono::high_resolution_clock::now().time_since_epoch().count();
  std::cout << "res = " << res << std::endl;
  std::cout << "Spent " << end - start << " ns (" << (end - start)/1000000 << " ms)" <<  std::endl;
  std::cout << __VERSION__ << std::endl;
  return 0;
}