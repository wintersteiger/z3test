
; Copyright (c) 2015 Microsoft Corporation



(declare-const a Real)
(declare-const b Real)

(assert (= (* (root-obj (+ (^ x 5) (* (- 1) x) (- 1)) 1) a)
           1.))

(assert (= (* (^ 2. (/ 1. 2.)) b) 1.))

(apply (! purify-arith :elim-root-objects false))