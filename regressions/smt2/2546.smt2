(set-logic NRA)
(declare-fun a () Real)
(declare-fun b () Real)
(declare-fun c () Real)
(declare-fun d () Real)
(declare-fun f () Real)
(assert (or  
        (not (exists ((e Real)) 
            (let ((?h (= a 2))) 
                (=> (and ?h (< c b)) 
                    (=> (>= f 0) 
                        (=> (= (<= (* e f) f) (<= 0 d)) ?h ))))))  
        (forall ((i Real))
            (forall ((aa Real)) 
                (exists ((g Real))
                    (exists ((j Real))
                        (exists ((bb Real))
                            (exists ((cc Real))
                                (forall ((dd Real))
                                    (forall ((ee Real))
                                        (forall ((ff Real))
                                            (forall ((aa Real))
                                                    (let ((?k (+ (+ (* 9 g) (* 17 aa)) (* 4 j)))) 
                                                        (<= (+ ?k (* 7 i)) 1))))))))))))))

(check-sat)
;(apply (and-then simplify propagate-values qe-light simplify))
;(get-model)