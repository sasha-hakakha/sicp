(use-modules (general utils)
	     (ch1 product-range))

(define (wallis n)
  (define (inc x) (+ x 1))
  (define (inner-term x)
    (/ (* 4 (* n n))
       (- (* 4 (* n n))
	  1)))
  (* 2
     (product inner-term 1 inc n)))
