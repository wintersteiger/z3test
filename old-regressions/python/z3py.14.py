
# Copyright (c) 2015 Microsoft Corporation
from z3 import *
set_option(auto_config=True)

x = Int('x')
y = Int('y')
f = Function('f', IntSort(), IntSort())
solve(f(f(x)) == x, f(x) == y, x != y)
