(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall b_bn:B. forall a_bm:A. b_bn + 2a_bm + |UNIVERALSET| - 3n >= (n - t + 1) / 2 or (n - t + 1) / 2 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_bn () Int)
(assert (<= b_bn n))
(assert (>= b_bn 0))
(assert (>= (* 2 b_bn) (+ (+ n (* 3 t)) 1)))

(declare-fun a_bm () Int)
(assert (<= a_bm n))
(assert (>= a_bm 0))
(assert (>= a_bm (- n t)))


(assert (and (< (* 2 (- (+ (+ b_bn (* 2 a_bm)) (card UNIVERALSET)) (* 3 n))) (+ (- n t) 1)) (> (+ (- n t) 1) (* 2 0))))

(check-sat)
