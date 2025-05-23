(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall b_bd:B. forall a_bc:A. b_bd + a_bc + |f & ~f| - 2n >= (n - t + 1) / 2 or (n - t + 1) / 2 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_bd () Int)
(assert (<= b_bd n))
(assert (>= b_bd 0))
(assert (>= (* 2 b_bd) (+ (+ n (* 3 t)) 1)))

(declare-fun a_bc () Int)
(assert (<= a_bc n))
(assert (>= a_bc 0))
(assert (>= a_bc (- n t)))


(assert (and (< (* 2 (- (+ (+ b_bd a_bc) (card (intersection f (setminus UNIVERALSET f)))) (* 2 n))) (+ (- n t) 1)) (> (+ (- n t) 1) (* 2 0))))

(check-sat)
