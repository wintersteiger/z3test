
; Copyright (c) 2015 Microsoft Corporation
(set-info :status sat)
(set-info :source "Handcrafted by C.M. Wintersteiger")

(declare-fun X () Float16)
(declare-fun Y () Float16)
(declare-fun Z () Float16)
(declare-fun W () Float16)

(assert 
  (or
	  (= X (fp.add RTZ Y Z))
	  (= X (fp.sub RTZ Y Z))
	  (= X (fp.mul RTZ Y Z))
	  (= X (fp.div RTZ Y Z))
	  ;; (= X (fp.fma RTZ Y Z W))
	  (= X (fp.sqrt RTZ Y))
	  (= X (fp.rem X Y))
	  (= X (fp.roundToIntegral RTZ Y))
	  (= X (fp.min Y Z))
	  (= X (fp.max Y Z))
  )
)

(check-sat)
(exit)
