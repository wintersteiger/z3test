
; Copyright (c) 2015 Microsoft Corporation


(declare-const a Int)
(declare-const b Int)
(declare-fun p (Int) Bool)
(declare-fun f (Int) Int)
(set-option :pp.max-depth 100)

(assert (<= 6 b))
(assert (forall ((x Int)) (=> (and (<= b x) (<= x (f x)) (<= (f x) (- a 1))) (p x))))
(assert (<= a 5))
(apply minimize_bounded_quantifiers)