(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall b_bl:B. forall a_bk:A. B(b_bl & a_bk & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_bl () (Set Int))
(assert (subset b_bl UNIVERALSET))
(assert (>= (* 2 (card b_bl)) (+ (+ n (* 3 t)) 1)))

(declare-fun a_bk () (Set Int))
(assert (subset a_bk UNIVERALSET))
(assert (>= (card a_bk) (- n t)))


(assert (not (>= (* 2 (card (intersection (intersection b_bl a_bk) (setminus UNIVERALSET f)))) (+ (+ n (* 3 t)) 1))))

(check-sat)
