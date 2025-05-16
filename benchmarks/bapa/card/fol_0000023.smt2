(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall b_f:B. b_f + |UNIVERALSET| - n >= (n - t + 1) / 2 or (n - t + 1) / 2 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_f () Int)
(assert (<= b_f n))
(assert (>= b_f 0))
(assert (>= (* 2 b_f) (+ (+ n (* 3 t)) 1)))


(assert (and (< (* 2 (- (+ b_f (card UNIVERALSET)) n)) (+ (- n t) 1)) (> (+ (- n t) 1) (* 2 0))))

(check-sat)
