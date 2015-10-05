
; Copyright (c) 2015 Microsoft Corporation
(set-logic QF_FPBV)
(set-info :status sat)
(set-option :model_validate true)

(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () (_ BitVec 32))
(declare-fun r () FPN)
(declare-fun q () FPN)

(assert (= x #x00000003))
(assert (= r (fp #b0 #b10000000000 #b1000000000000000000000000000000000000000000000000000)))
(assert (= q ((_ to_fp_unsigned 11 53) RTZ x)))

(assert (= (fp.max q r) (fp.max r q)))

(check-sat)
(get-model)
