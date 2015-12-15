
# Copyright (c) 2015 Microsoft Corporation
from z3 import *

p, q = Bools('p q')
print And(p, q)
print Or(p, q)
print And(p, True)
print Or(q, False)
print Not(p)
print Implies(p, q)
print simplify(p == q)
print p == q
r = Bool('r')
print p != (q != r)
print (p != q) != r
print p == True
print p == False
print simplify(p == True)
print simplify(p == False)
print simplify(p == p)
print simplify(p == q)
print And(p, q, r)
print Or(p, q, r)
x = Int('x')
print is_bool(x)
print is_bool(p)
print is_bool(And(p, q))
print is_bool(p)
print is_bool(x + 1)
print is_and(p)
print is_and(Or(p, q))
print is_or(Or(p, q))
print is_and(And(p, q))
print is_not(x)
print is_not(p)
print is_not(Not(p))
print is_distinct(Not(p))
print is_distinct(p == q)
print is_distinct(Distinct(p, q))
print is_distinct(Distinct(x, x+1, x+2))
print BoolVal(True)
print BoolVal(False)
print BoolSort()
ctx = Context()
print BoolVal(True, ctx)
print BoolSort(ctx)
print BoolVal(True, ctx).sort().eq(BoolSort(ctx))
print BoolVal(True, ctx).sort().eq(BoolSort())
# Can use == for comparing sorts
print BoolVal(True, ctx).sort() == BoolSort(ctx)
print BoolVal(True, ctx).sort() == BoolSort()
print BoolVal(True, ctx).sort() != BoolSort()

