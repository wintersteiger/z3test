
; Copyright (c) 2015 Microsoft Corporation
(set-option :auto-config true)
(set-option :produce-models true)
(set-logic QF_NIA)
(declare-const a Int)
(assert (> (* a a) 3))
(check-sat)
(get-model)