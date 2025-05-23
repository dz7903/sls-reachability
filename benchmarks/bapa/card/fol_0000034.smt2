(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall c_l:C. c_l + |UNIVERALSET| - n >= 1 or 1 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_l () Int)
(assert (<= c_l n))
(assert (>= c_l 0))
(assert (>= (* 2 c_l) (+ (- n t) 1)))


(assert (and (< (- (+ c_l (card UNIVERALSET)) n) 1) (> 1 0)))

(check-sat)
