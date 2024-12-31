(use-modules (general utils))

(define (f-recursive n)
  (if (< n 3)
      n
      (+ (f-recursive (- n 1))
	 (* 2 (f-recursive (- n 2)))
	 (* 3 (f-recursive (- n 3))))))
	   
(define (f-iter a b c count n)
  (define new-c
	(+ c
	   (* 2 b)
	   (* 3 a)))
  (if (= count n)
      b
      (f-iter b c new-c (+ count 1) n)))
      			   
(define (f-iter-pretty n)
  (if (< n 3)
      n
      (f-iter 1 2 4 3 n)))
