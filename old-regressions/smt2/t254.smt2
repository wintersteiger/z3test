
; Copyright (c) 2015 Microsoft Corporation


(set-option :pp.max-depth 20)
(define-sort Double () (_ FP 11 53))
(declare-const a Double)
(declare-const b Double)
(simplify (min a b))
(simplify (max a b))
(simplify (abs a))
(simplify (- a))
(simplify (- (- a)))
(simplify (min (as NaN Double) a))
(simplify (min a (as NaN Double)))
(simplify (max (as NaN Double) a))
(simplify (max a (as NaN Double)))
(simplify (- (as NaN Double)))
(simplify (abs (as NaN Double)))
(simplify (< a (as NaN Double)))
(simplify (< (as NaN Double) a))
(simplify (<= a (as NaN Double)))
(simplify (<= (as NaN Double) a))
(simplify (> a (as NaN Double)))
(simplify (> (as NaN Double) a))
(simplify (>= a (as NaN Double)))
(simplify (>= (as NaN Double) a))

(simplify (< a (as plusInfinity Double)))
(simplify (< (as plusInfinity Double) a))
(simplify (> a (as plusInfinity Double)))
(simplify (> (as plusInfinity Double) a))

(simplify (< a (as minusInfinity Double)))
(simplify (< (as minusInfinity Double) a))
(simplify (> a (as minusInfinity Double)))
(simplify (> (as minusInfinity Double) a))

(simplify (> a b))
(simplify (>= a b))

(simplify (max a (as plusInfinity Double)))
(simplify (min a (as minusInfinity Double)))
