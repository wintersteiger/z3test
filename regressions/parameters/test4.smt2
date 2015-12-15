
; Copyright (c) 2015 Microsoft Corporation
(declare-const x (_ BitVec 16))
(declare-const y (_ BitVec 16))
(assert (= (bvor x y) (_ bv13 16)))
(assert (bvslt x y))
(check-sat-using (then simplify solve-eqs bit-blast (using-params sat :sat.phase always_false)))
(get-model)