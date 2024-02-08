#include <vector>
#include <cassert>
#include <cmath>
#include <iostream>
#include "geometry.h"

template <> template <> Vec3<int>::Vec3(const Vec3<float> &v) : x(int(v.x + 0.5)), y(int(v.y + 0.5)), z(int(v.z + 0.5)) {

}

template <> template <> Vec3<float>::Vec3(const Vec3<int> &v) : x(v.x), y(v.y), z(v.z) {

}

