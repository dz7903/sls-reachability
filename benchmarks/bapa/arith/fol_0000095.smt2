(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall a_dr:A. 2a_dr + |~f| - 2n >= 1 or 1 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun a_dr () Int)
(assert (<= a_dr n))
(assert (>= a_dr 0))
(assert (>= a_dr (- n t)))


(assert (and (< (- (+ (* 2 a_dr) (card (setminus UNIVERALSET f))) (* 2 n)) 1) (> 1 0)))

(check-sat)
