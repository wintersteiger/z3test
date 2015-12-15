
; Copyright (c) 2015 Microsoft Corporation


(define-sort W () (_ BitVec 8))

(declare-const c1 W)
(declare-const c2 W)

(set-option :pp.flat-assoc false)

(simplify (bvnot #b010010))

(simplify (bvnot #x0000ffff0000ffff0000ffff0000ffff)) 
(simplify (bvnot #xffff0000ffff0000ffff)) 
(simplify (bvnot #x00ff00000000000000ff))

