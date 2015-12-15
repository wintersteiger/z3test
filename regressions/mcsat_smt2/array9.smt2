
; Copyright (c) 2015 Microsoft Corporation

(define-sort S () (Array Int (Array Bool Int)))
(declare-const A1 S)
(declare-const A2 S)
(declare-const A3 S)
(declare-const B (Array Bool Int))
(declare-fun f (S) Int)
(declare-fun g (S) S)

(set-option :pp.max-depth 100)
(assert (> (f A1) 0))
(assert (< (f A2) 0))
(assert (> (f (store A3 10 B)) 0))
(assert (= (g (store A3 10 B)) A1))
(assert (= (g (store A3 11 B)) A2))

(apply (then simplify elim_array simplify) :print-model-converter true)
