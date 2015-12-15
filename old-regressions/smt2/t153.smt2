
; Copyright (c) 2015 Microsoft Corporation


;; testing macros
(set-option :auto-config true)
(set-option :model true)
(set-logic UFBV)
(declare-fun f ((_ BitVec 32)) (_ BitVec 32))
(declare-const a (_ BitVec 32))
(declare-const b (_ BitVec 32))
(assert (forall ((x (_ BitVec 32))) (= (f x) (bvadd x #x00000001))))
(assert (bvuge (f a) b))
(check-sat)
(get-model)
(eval (f #x00000000))
(eval (f #x00000001))
(eval (f b))

;; testing quasi-macros
(reset)
(set-option :auto-config true)
(set-option :model true)
(set-logic UFBV)
(declare-fun f ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-const a (_ BitVec 32))
(declare-const b (_ BitVec 32))
(assert (forall ((x (_ BitVec 32))) (= (f x x) (bvadd x #x00000001))))
(assert (bvuge (f a a) b))
(check-sat)
(get-model)
(eval (f #x00000000 #x00000000))
(eval (f #x00000001 #x00000001))
