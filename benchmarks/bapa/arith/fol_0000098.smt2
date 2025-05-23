(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall b_dw:B. forall a_dv:A. 2b_dw + 2a_dv + |~f| - 4n >= 1 or 1 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_dw () Int)
(assert (<= b_dw n))
(assert (>= b_dw 0))
(assert (>= (* 2 b_dw) (+ (+ n (* 3 t)) 1)))

(declare-fun a_dv () Int)
(assert (<= a_dv n))
(assert (>= a_dv 0))
(assert (>= a_dv (- n t)))


(assert (and (< (- (+ (+ (* 2 b_dw) (* 2 a_dv)) (card (setminus UNIVERALSET f))) (* 4 n)) 1) (> 1 0)))

(check-sat)
