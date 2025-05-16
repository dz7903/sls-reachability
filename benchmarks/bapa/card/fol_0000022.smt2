(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall c_e:C. c_e + |UNIVERALSET| - n >= n - t or n - t <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_e () Int)
(assert (<= c_e n))
(assert (>= c_e 0))
(assert (>= (* 2 c_e) (+ (- n t) 1)))


(assert (and (< (- (+ c_e (card UNIVERALSET)) n) (- n t)) (> (- n t) 0)))

(check-sat)
