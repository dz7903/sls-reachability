(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall b_du:B. forall a_dt:A. b_du + 2a_dt + |~f| - 3n >= 1 or 1 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_du () Int)
(assert (<= b_du n))
(assert (>= b_du 0))
(assert (>= (* 2 b_du) (+ (+ n (* 3 t)) 1)))

(declare-fun a_dt () Int)
(assert (<= a_dt n))
(assert (>= a_dt 0))
(assert (>= a_dt (- n t)))


(assert (and (< (- (+ (+ b_du (* 2 a_dt)) (card (setminus UNIVERALSET f))) (* 3 n)) 1) (> 1 0)))

(check-sat)
