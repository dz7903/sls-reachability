(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall b_er:B. forall a_eq:A. 2b_er + 3a_eq + |UNIVERALSET| - 5n >= 1 or 1 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_er () Int)
(assert (<= b_er n))
(assert (>= b_er 0))
(assert (>= (* 2 b_er) (+ (+ n (* 3 t)) 1)))

(declare-fun a_eq () Int)
(assert (<= a_eq n))
(assert (>= a_eq 0))
(assert (>= a_eq (- n t)))


(assert (and (< (- (+ (+ (* 2 b_er) (* 3 a_eq)) (card UNIVERALSET)) (* 5 n)) 1) (> 1 0)))

(check-sat)
