
; Copyright (c) 2015 Microsoft Corporation

(declare-fun r (Int Int) Bool)
(declare-fun x () Int)


(assert (forall ((z Int) (u Int)) (=> (and (> z 22) (< z 25) (> (* 3 u) x) (< u 11)) (r u z))) )

(apply (! expand_bounded_quantifiers :domain 3))

