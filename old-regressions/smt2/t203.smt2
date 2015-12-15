
; Copyright (c) 2015 Microsoft Corporation
(set-logic QF_LIA)
(set-option :auto-config true)
(set-option :produce-models true)
(set-info :smt-lib-version 2.0)
(declare-fun v () Int)
(declare-fun x () Int)
(assert (and
  (<= 0 v)
  (< 0 x)
  (<= x 2)
  (not (> (- x 1) 0))))
(check-sat)
(get-model)
