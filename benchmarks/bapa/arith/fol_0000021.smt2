(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall a_d:A. a_d + |UNIVERALSET| - n >= (n - t + 1) / 2 or (n - t + 1) / 2 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_d () Int)
(assert (<= a_d n))
(assert (>= a_d 0))
(assert (>= a_d (- n t)))


(assert (and (< (* 2 (- (+ a_d (card UNIVERALSET)) n)) (+ (- n t) 1)) (> (+ (- n t) 1) (* 2 0))))

(check-sat)
