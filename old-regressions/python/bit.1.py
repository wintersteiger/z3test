
# Copyright (c) 2015 Microsoft Corporation
from z3 import *
set_option(auto_config=True)

x      = BitVec('x', 32)
powers = [ 2**i for i in range(32) ]
fast   = And(x != 0, x & (x - 1) == 0)
slow   = Or([ x == p for p in powers ])
print fast
prove(fast == slow)

print "trying to prove buggy version..."
fast   = x & (x - 1) == 0
prove(fast == slow)
