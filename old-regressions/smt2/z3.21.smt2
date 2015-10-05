
; Copyright (c) 2015 Microsoft Corporation
(set-option :auto-config true)
(set-option :produce-models true)

(declare-const all1 (Array Int Int))
(declare-const a Int)
(declare-const i Int)
(assert (= all1 ((as const (Array Int Int)) 1)))
(assert (= a (select all1 i)))
(check-sat)
(get-model)
(assert (not (= a 1)))
(check-sat)
