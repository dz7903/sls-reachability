(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall c_dn:C. nonempty(c_dn & ~f)

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_dn () (Set Int))
(assert (subset c_dn UNIVERALSET))
(assert (>= (* 2 (card c_dn)) (+ (- n t) 1)))


(assert (= (card (intersection c_dn (setminus UNIVERALSET f))) 0))

(check-sat)
