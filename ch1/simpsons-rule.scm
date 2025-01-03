(use-modules (general utils))

(define (simpson a b function n)
  (define h (/ (- b a)
	       n))
  (define (coefficent k)
    (cond ((or (= k 0) (= k n)) 1)
	  ((= (remainder k 2) 1) 4)
	  (else 2)))
  (define (summation-loop k)
    (if (> k n)
	 0
	 (+ (* (coefficent k)
	       (function (+ a (* k h))))
	    (summation-loop (+ k 1)))))
  (* (/ h 3)
     (summation-loop 0)))

(define (cube x)
  (* x x x))

