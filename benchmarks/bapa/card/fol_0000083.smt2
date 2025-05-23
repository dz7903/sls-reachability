(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall b_dk:B. forall b_dj:B. nonempty(b_dk & b_dj)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_dk () (Set Int))
(assert (subset b_dk UNIVERALSET))
(assert (>= (* 2 (card b_dk)) (+ (+ n (* 3 t)) 1)))

(declare-fun b_dj () (Set Int))
(assert (subset b_dj UNIVERALSET))
(assert (>= (* 2 (card b_dj)) (+ (+ n (* 3 t)) 1)))


(assert (= (card (intersection b_dk b_dj)) 0))

(check-sat)
