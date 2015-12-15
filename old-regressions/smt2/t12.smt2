
; Copyright (c) 2015 Microsoft Corporation


(declare-fun f (Int Int) Int)

(dbg-get-qbody V1 
               (forall ((x Int) (y Int))
                       (=> (> (f x y) 0)
                           (and (exists ((z Int))
                                        (and (= (f x z) (f y z))
                                             (forall ((w Int))
                                                     (> (f x w) (+ (f x z) (f y w))))
                                             (= (f x z) 0)
                                             (= (f y z) 0)
                                             ))
                                (= (f x y) 0)
                                ))))

(set-option :pp.max-depth 100)

(dbg-pp-var V1)
(dbg-shift-vars V1 4)
(dbg-pp-var V1)

(dbg-get-qbody V2
               (forall ((x Int) (y Int))
                       (let ((a (forall ((z Int)) (or 
                                                   (= (f x z) (f y z))
                                                   (let ((b (exists ((w Int))
                                                                    (> (f (f (f x w) y) x) 0))))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                   (let ((b (or b b)))
                                                     b)))))))))))))))))))))))))))))))))))))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                       (let ((a (and a a)))
                         a)))))))))))))))))))))))))))))))))))
(dbg-pp-var V2)
(dbg-shift-vars V2 2)
(dbg-pp-var V2)
