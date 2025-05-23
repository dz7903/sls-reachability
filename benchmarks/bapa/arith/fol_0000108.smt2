(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall b_et:B. forall a_es:A. 2b_et + 3a_es + |UNIVERALSET| - 5n >= n or n <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_et () Int)
(assert (<= b_et n))
(assert (>= b_et 0))
(assert (>= (* 2 b_et) (+ (+ n (* 3 t)) 1)))

(declare-fun a_es () Int)
(assert (<= a_es n))
(assert (>= a_es 0))
(assert (>= a_es (- n t)))


(assert (and (< (- (+ (+ (* 2 b_et) (* 3 a_es)) (card UNIVERALSET)) (* 5 n)) n) (> n 0)))

(check-sat)
