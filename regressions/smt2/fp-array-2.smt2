
; Copyright (c) 2015 Microsoft Corporation
(set-info :status sat)

(declare-fun A () (Array Int (_ FloatingPoint 53 11)))

(assert (fp.eq (select A 0) (select A 1)))

(check-sat)
(exit)
