
; Copyright (c) 2015 Microsoft Corporation
(declare-const a Real)

(echo "trigonometric...")
(simplify (sin (asin a)))
(simplify (cos (asin a)))
(simplify (cos (acos a)))
(simplify (tan (atan a)))

(echo "hyperbolic...")
(simplify (sinh (asinh a)))
(simplify (cosh (asinh a)))
(simplify (cosh (acosh a)))
(simplify (tanh (atanh a)))
(simplify (sinh (- a)))
(simplify (cosh (- a)))
(simplify (tanh (- a)))
