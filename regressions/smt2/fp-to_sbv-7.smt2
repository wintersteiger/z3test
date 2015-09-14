(set-info :status unsat)
(set-info :source "Handcrafted by C.M. Wintersteiger")

; 2^15 = 32768 -> (_ fp.to_sbv_unspecified 8); #x00 is the "hardware interpretation"
(assert (not (= #x00 ((_ fp.to_sbv 8) RTP (fp #b0 #b11110 #b0000000000)))))

(check-sat)
(exit)