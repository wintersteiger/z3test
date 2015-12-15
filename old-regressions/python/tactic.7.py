
# Copyright (c) 2015 Microsoft Corporation
from z3 import *
set_option(auto_config=True)

bv_solver = Then(With('simplify', mul2concat=True),
                 'solve-eqs', 
                 'bit-blast', 
                 'aig',
                 'sat').solver()
x, y = BitVecs('x y', 16)
bv_solver.add(x*32 + y == 13, x & y < 10, y > -100)
print bv_solver.check()
m = bv_solver.model()
print m
print x*32 + y, "==", m.evaluate(x*32 + y)
print x & y, "==", m.evaluate(x & y)

