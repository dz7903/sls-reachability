(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall b_fc:B. 2b_fc + |UNIVERALSET| - 2n >= 1 or 1 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_fc () Int)
(assert (<= b_fc n))
(assert (>= b_fc 0))
(assert (>= (* 2 b_fc) (+ (+ n (* 3 t)) 1)))


(assert (and (< (- (+ (* 2 b_fc) (card UNIVERALSET)) (* 2 n)) 1) (> 1 0)))

(check-sat)
