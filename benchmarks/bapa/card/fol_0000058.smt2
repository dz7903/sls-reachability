(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; A(~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))


(assert (not (>= (card (setminus UNIVERALSET f)) (- n t))))

(check-sat)
