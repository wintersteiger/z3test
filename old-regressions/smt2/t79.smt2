
; Copyright (c) 2015 Microsoft Corporation

(declare-const a (_ BitVec 1))
(declare-const b (_ BitVec 1))

(simplify (= (bvor a b) #b0))