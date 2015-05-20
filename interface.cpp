#include <iostream>
#include "interface.h"


bool XXX::do_it(int i) {
  std::cout << "do it in XXX: " << i << std::endl;
  return true;
}


bool run() {
  std::cout << "Helo World" << std::endl;
  return false;
}
