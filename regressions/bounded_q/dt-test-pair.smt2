
; Copyright (c) 2015 Microsoft Corporation


(declare-datatypes () ((Pair (mk-Pair (first Int) (second Int)))))
(declare-fun p (Pair) Bool)

(assert (forall ((x Pair)) 
			(=>
                         (and (>= (first x) 0) (<= (first x) 12)
                              (>= (second x) 1) (<= (second x) 2))
                         (p x))))

(apply (then split_datatype_quantifiers expand_bounded_quantifiers))