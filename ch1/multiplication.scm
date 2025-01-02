(use-modules (general utils))

(define (even? n)
  (= (remainder n 2) 0))

(define (double x)
  (* x 2))

(define (half x)
  (/ x 2))

(define (fast-mult a b)
  (cond ((= b 0) 0)
	((even? b)(fast-mult (double a)
			     (half b)))
	(else (+ a
		 (fast-mult (double a)
			    (half (- b 1)))))))
