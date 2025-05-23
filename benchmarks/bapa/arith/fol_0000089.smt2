(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall b_dj:B. forall a_di:A. b_dj + a_di + |~f| - 2n >= 1 or 1 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_dj () Int)
(assert (<= b_dj n))
(assert (>= b_dj 0))
(assert (>= (* 2 b_dj) (+ (+ n (* 3 t)) 1)))

(declare-fun a_di () Int)
(assert (<= a_di n))
(assert (>= a_di 0))
(assert (>= a_di (- n t)))


(assert (and (< (- (+ (+ b_dj a_di) (card (setminus UNIVERALSET f))) (* 2 n)) 1) (> 1 0)))

(check-sat)
