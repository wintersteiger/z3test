
; Copyright (c) 2015 Microsoft Corporation

(set-option :produce-models true)
(declare-const x Int)
(declare-const y Int)
(declare-const z Int)
(declare-fun p (Int Int) Bool)

(assert (p y z))
(assert (not (= x (* y z))))
(apply elim-uncnstr :print-model-converter true)
(reset)

(set-option :produce-models true)
(declare-const x Real)
(declare-const y Real)
(declare-const z Real)
(declare-fun p (Real Real) Bool)

(assert (p y z))
(assert (not (= x (* y z))))
(apply elim-uncnstr :print-model-converter true)
(reset)

(set-option :produce-models true)
(declare-const x (Array Int Int))
(declare-const y (Array Int Int))
(declare-fun p ((Array Int Int) (Array Int Int)) Bool)

(assert (p y y))
(assert (not (= x (store y 3 6))))
(apply elim-uncnstr :print-model-converter true)
(reset)

(set-option :produce-models true)
(declare-const x (List Int))
(declare-const y Int)
(declare-const z (List Int))
(declare-fun p (Int (List Int)) Bool)

(assert (p y z))
(assert (not (= x (insert y z)))) 
(apply elim-uncnstr :print-model-converter true)
(reset)

(set-option :produce-models true)
(declare-const x (_ BitVec 8))
(declare-const y (_ BitVec 8))
(declare-const z (_ BitVec 8))
(declare-fun p ((_ BitVec 8) (_ BitVec 8)) Bool)

(set-option :produce-models true)
(assert (p y z))
(assert (not (= x (bvmul y z))))
(apply elim-uncnstr :print-model-converter true)
(reset)

(set-option :produce-models true)
(declare-const x Bool)
(declare-const y Bool)
(declare-const z Bool)
(declare-fun p (Bool Bool) Bool)

(assert (p y z))
(assert (not (= x (or y z))))
(apply (and-then simplify elim-uncnstr) :print-model-converter true)
(reset)

(set-option :produce-models true)
(declare-sort S 0)
(declare-const x S)
(declare-const y S)
(declare-const z S)
(declare-fun p (S S) Bool)
(declare-fun f (S S) S)

(assert (p y z))
(assert (not (= x (f y z))))
(apply elim-uncnstr :print-model-converter true)
(reset)

(set-option :produce-models true)
(declare-sort S 0)
(declare-const x (Array Int S))
(declare-const y (Array Int S))
(declare-fun p ((Array Int S) (Array Int S)) Bool)
(declare-const v S)

(assert (p y y))
(assert (not (= x (store y 3 v))))
(apply elim-uncnstr :print-model-converter true)
(reset)
