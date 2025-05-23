(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall c_cd:C. forall b_cc:B. c_cd + b_cc + |~f| - 2n >= 1 or 1 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_cd () Int)
(assert (<= c_cd n))
(assert (>= c_cd 0))
(assert (>= (* 2 c_cd) (+ (- n t) 1)))

(declare-fun b_cc () Int)
(assert (<= b_cc n))
(assert (>= b_cc 0))
(assert (>= (* 2 b_cc) (+ (+ n (* 3 t)) 1)))


(assert (and (< (- (+ (+ c_cd b_cc) (card (setminus UNIVERALSET f))) (* 2 n)) 1) (> 1 0)))

(check-sat)
