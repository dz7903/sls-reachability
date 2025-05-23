(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall c_cl:C. forall b_ck:B. c_cl + b_ck + |~f| - 2n >= n - t or n - t <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_cl () Int)
(assert (<= c_cl n))
(assert (>= c_cl 0))
(assert (>= (* 2 c_cl) (+ (- n t) 1)))

(declare-fun b_ck () Int)
(assert (<= b_ck n))
(assert (>= b_ck 0))
(assert (>= (* 2 b_ck) (+ (+ n (* 3 t)) 1)))


(assert (and (< (- (+ (+ c_cl b_ck) (card (setminus UNIVERALSET f))) (* 2 n)) (- n t)) (> (- n t) 0)))

(check-sat)
