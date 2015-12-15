
; Copyright (c) 2015 Microsoft Corporation
(define-sort W () (_ BitVec 8))
(declare-fun p (W W) Bool)

(assert (forall ((x W) (y W))
                (=> 
                 (and 
                  (bvule x #x55)
                  (bvuge y #x53) (bvule y x))
                 (p x y))))

(apply (! expand_bounded_quantifiers :max-instances 1000))