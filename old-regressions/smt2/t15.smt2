
; Copyright (c) 2015 Microsoft Corporation



(declare-fun p (Bool Bool) Bool)
(declare-fun f (Bool Bool) Bool)
(declare-fun g (Bool) Bool)
(declare-fun a () Bool)
(declare-fun b () Bool)

(set-option :pp.max-depth 100)

(dbg-get-qbody V1 (forall ((x Bool) (y Bool))
                          (p (exists ((z Bool))
                                     (and 
                                      (p (exists ((w Bool)) (and
                                                             (f z (f x (f y w)))
                                                             (and 
                                                              (forall ((r Bool)) (p r w))
                                                              (p (p (p z w) w) true)
                                                              (p true (p z w)))))
                                         (f y (f z x)))
                                      (p z z)))
                             (f x (f y (g x))))))



(dbg-pp-var V1)

(dbg-set V2 a)

(dbg-get-qbody V2 (forall ((x Bool) (y Bool)) (p x (g y))))

(dbg-pp-var V2)

(dbg-set V3 (f a b))

(dbg-subst V1 (V2 V3) V4)

(dbg-pp-var V4)
