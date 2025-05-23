(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall b_bp:B. forall a_bo:A. b_bp + 2a_bo + |UNIVERALSET| - 3n >= n or n <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun b_bp () Int)
(assert (<= b_bp n))
(assert (>= b_bp 0))
(assert (>= (* 2 b_bp) (+ (+ n (* 3 t)) 1)))

(declare-fun a_bo () Int)
(assert (<= a_bo n))
(assert (>= a_bo 0))
(assert (>= a_bo (- n t)))


(assert (and (< (- (+ (+ b_bp (* 2 a_bo)) (card UNIVERALSET)) (* 3 n)) n) (> n 0)))

(check-sat)
