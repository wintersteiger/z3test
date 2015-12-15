
# Copyright (c) 2015 Microsoft Corporation
from z3 import *
set_option(auto_config=True)

print 1/3
print RealVal(1)/3
print Q(1,3)

x = Real('x')
print x + 1/3
print x + Q(1,3)
print x + "1/3"
print x + 0.25
