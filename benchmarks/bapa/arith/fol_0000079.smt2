(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall c_cw:C. forall b_cv:B. forall a_cu:A. c_cw + b_cv + a_cu + |UNIVERALSET| - 3n >= n or n <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_cw () Int)
(assert (<= c_cw n))
(assert (>= c_cw 0))
(assert (>= (* 2 c_cw) (+ (- n t) 1)))

(declare-fun b_cv () Int)
(assert (<= b_cv n))
(assert (>= b_cv 0))
(assert (>= (* 2 b_cv) (+ (+ n (* 3 t)) 1)))

(declare-fun a_cu () Int)
(assert (<= a_cu n))
(assert (>= a_cu 0))
(assert (>= a_cu (- n t)))


(assert (and (< (- (+ (+ (+ c_cw b_cv) a_cu) (card UNIVERALSET)) (* 3 n)) n) (> n 0)))

(check-sat)
