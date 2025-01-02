(use-modules (general utils))

(define (even? n)
  (= (remainder n 2) 0))

(define (exp a b n)
  (cond ((= n 0) a)
	((even? n) (exp a (* b b) (/ n 2)))
	(else (exp (* a b) b (- n 1)))))

(define (exp-iter b n)
  (exp 1 b n))


	
	
