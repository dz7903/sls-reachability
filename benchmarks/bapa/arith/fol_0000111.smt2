(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall a_ew:A. 2a_ew + |UNIVERALSET| - 2n >= (n - t + 1) / 2 or (n - t + 1) / 2 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_ew () Int)
(assert (<= a_ew n))
(assert (>= a_ew 0))
(assert (>= a_ew (- n t)))


(assert (and (< (* 2 (- (+ (* 2 a_ew) (card UNIVERALSET)) (* 2 n))) (+ (- n t) 1)) (> (+ (- n t) 1) (* 2 0))))

(check-sat)
