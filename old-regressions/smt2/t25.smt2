
; Copyright (c) 2015 Microsoft Corporation


(declare-const a1 Int)
(declare-const a2 Int)
(declare-const a3 Int)
(declare-const a4 Int)
(declare-const a5 Int)
(declare-const a6 Int)
(declare-const b1 Int)
(declare-const b2 Int)
(declare-const b3 Int)
(declare-const b4 Int)
(declare-const b5 Int)
(declare-const b6 Int)
(declare-const c5 Int)

(simplify (= (insert a1 (insert a2 (insert a3 (insert (+ a4 1) (insert (+ a5 c5) (insert a6 (as nil (List Int))))))))
                    (insert b1 (insert b2 (insert b3 (insert b4 (insert b5 (insert b6 (as nil (List Int))))))))))

(declare-fun l1 () (List Int))
(declare-fun l2 () (List Int))

(simplify (= (insert a1 l1) nil))
(simplify (head (insert a1 l2)))
(simplify (tail (insert a1 l2)))
(simplify (head (tail (insert a1 (insert a2 l2)))))
(simplify (tail (insert a1 (insert a2 l2))))
(simplify (is-insert (insert a1 (insert a2 l2))))
(simplify (is-insert nil))
(simplify (is-nil (insert a1 (insert a2 l2))))
(simplify (is-nil nil))


