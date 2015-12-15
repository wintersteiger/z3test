
; Copyright (c) 2015 Microsoft Corporation


(declare-fun p (Int Int) Bool)
(declare-const a Int)

(assert (forall ((x Int)) (=> (and (<= 0 x) (<= x a) (<= a 2))
                              (p x x))))

(apply (then minimize_bounded_quantifiers expand_bounded_quantifiers))
(apply (then minimize_bounded_quantifiers (! expand_bounded_quantifiers :precise true)))