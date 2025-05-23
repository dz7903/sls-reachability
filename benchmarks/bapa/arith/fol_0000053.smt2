(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall b_bj:B. forall a_bi:A. b_bj + a_bi + |~f| - 2n >= (n + 3t + 1) / 2 or (n + 3t + 1) / 2 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_bj () Int)
(assert (<= b_bj n))
(assert (>= b_bj 0))
(assert (>= (* 2 b_bj) (+ (+ n (* 3 t)) 1)))

(declare-fun a_bi () Int)
(assert (<= a_bi n))
(assert (>= a_bi 0))
(assert (>= a_bi (- n t)))


(assert (and (< (* 2 (- (+ (+ b_bj a_bi) (card (setminus UNIVERALSET f))) (* 2 n))) (+ (+ n (* 3 t)) 1)) (> (+ (+ n (* 3 t)) 1) (* 2 0))))

(check-sat)
