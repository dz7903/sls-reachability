(set-logic ALL)
(set-info :status unsat)
(declare-fun card ((Set Int)) Int)

; forall c_fb:C. forall b_fa:B. c_fb + b_fa + |UNIVERALSET| - 2n >= 1 or 1 <= 0

(declare-fun n () Int)
(declare-fun t () Int)

(declare-fun f () (Set Int))
(declare-fun UNIVERALSET () (Set Int))
(assert (subset f UNIVERALSET))
(assert (= (card UNIVERALSET) n))

(assert (> n 0))
(assert (> n (* 3 t)))
(assert (<= (card f) t))

(declare-fun c_fb () Int)
(assert (<= c_fb n))
(assert (>= c_fb 0))
(assert (>= (* 2 c_fb) (+ (- n t) 1)))

(declare-fun b_fa () Int)
(assert (<= b_fa n))
(assert (>= b_fa 0))
(assert (>= (* 2 b_fa) (+ (+ n (* 3 t)) 1)))


(assert (and (< (- (+ (+ c_fb b_fa) (card UNIVERALSET)) (* 2 n)) 1) (> 1 0)))

(check-sat)
