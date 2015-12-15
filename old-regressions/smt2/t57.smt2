
; Copyright (c) 2015 Microsoft Corporation
(define-sort W () (_ BitVec 16))
(declare-const c1 W)
(declare-const c2 W)

(simplify (bvredor #x0010))
(simplify (bvredor #x0000))
(simplify (bvredand #x0010))
(simplify (bvredand #x0000))
(simplify (bvredand #xffff))
(simplify (bvcomp c1 c1))
(simplify (bvcomp #x01 #x02))
(simplify (bvcomp #x01 #x01))
(simplify (bvcomp c1 c2))
(simplify (bvredor c1))
(simplify (bvredand c2))
