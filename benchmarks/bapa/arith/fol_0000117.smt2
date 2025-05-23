(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall b_ff:B. 3b_ff + |UNIVERALSET| - 3n >= 1 or 1 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_ff () Int)
(assert (<= b_ff n))
(assert (>= b_ff 0))
(assert (>= (* 2 b_ff) (+ (+ n (* 3 t)) 1)))


(assert (and (< (- (+ (* 3 b_ff) (card UNIVERALSET)) (* 3 n)) 1) (> 1 0)))

(check-sat)
