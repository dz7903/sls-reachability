(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall nonempty_m:nonempty. nonempty_m + |UNIVERALSET| - n >= (n - t + 1) / 2 or (n - t + 1) / 2 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun nonempty_m () Int)
(assert (<= nonempty_m n))
(assert (>= nonempty_m 0))
(assert (>= nonempty_m 1))


(assert (and (< (* 2 (- (+ nonempty_m (card UNIVERALSET)) n)) (+ (- n t) 1)) (> (+ (- n t) 1) (* 2 0))))

(check-sat)
