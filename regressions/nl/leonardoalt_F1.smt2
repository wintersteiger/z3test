(declare-fun c () Int)
(declare-fun a () Int)
(declare-fun b () Int)
(assert (> a 0))
(assert (= c (* a b)))
(assert (not (= b (div c a))))
(check-sat)