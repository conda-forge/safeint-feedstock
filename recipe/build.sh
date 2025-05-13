#!/bin/bash

set -exuo pipefail

# cmake install targets removed
# https://github.com/dcleblanc/SafeInt/issues/67
mkdir -p ${PREFIX}/include

# As of July, 2022, there is also a C library [...]
# It consists of two files, safe_math.h, and safe_math_impl.h.
install SafeInt.hpp ${PREFIX}/include
install safe_math.h ${PREFIX}/include
install safe_math_impl.h ${PREFIX}/include
