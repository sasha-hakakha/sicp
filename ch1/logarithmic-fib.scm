(use-modules (general utils))

(define (fib-wrapper n)
  (fib-iter 1 0 0 1 n))

(define (fib n)
  (fib-wrapper (- n 1)))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
	((even? count)
	 (fib-iter a
		   b
		   (+ (* q q)
		      (* p p))
		   (+ (* 2 q p)
		      (* q q))
		   (/ count 2)))
	(else (fib-iter (+ (* b q) (* a q) (* a p))
			(+ (* b p) (* a q))
			p
			q
			(- count 1)))))
