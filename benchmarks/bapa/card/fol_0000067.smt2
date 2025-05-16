(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall c_cc:C. nonempty(c_cc & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_cc () (Set Int))
(assert (subset c_cc UNIVERALSET))
(assert (>= (* 2 (card c_cc)) (+ (- n t) 1)))


(assert (= (card (intersection c_cc (setminus UNIVERALSET f))) 0))

(check-sat)
