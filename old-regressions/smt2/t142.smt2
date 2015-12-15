
; Copyright (c) 2015 Microsoft Corporation

(set-option :produce-models true)
(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)
(assert (or p q r))
(check-sat (not p))
(get-model)
(check-sat (not q) (not r))
(get-model)
(assert (not p))
(check-sat (not q) (not r))
