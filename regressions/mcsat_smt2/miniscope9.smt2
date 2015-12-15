
; Copyright (c) 2015 Microsoft Corporation


(set-option :pp.max-depth 100)
(declare-fun p (Int) Bool)
(declare-fun q1 (Int Real) Bool)
(declare-fun q2 (Real Real) Bool)
(declare-fun q3 (Int Int) Bool)

(assert (forall ((x1 Int) (x2 Real))
                (or (q2 x2 x2) (exists ((y Real)) (and (q1 y x2) (q1 x1 x2))))))

(apply miniscope)
