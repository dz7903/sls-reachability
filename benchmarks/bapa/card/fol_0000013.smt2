(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; (n + 3t + 1) / 2 >= n or n - t <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))


(assert (and (< (+ (+ n (* 3 t)) 1) (* 2 n)) (> (- n t) 0)))

(check-sat)
