(use-modules (general utils))

(define (accumulate combiner null-value func a next b)
  (if (> a b)
      null-value
      (combiner (func a)
		(accumulate combiner null-value func (next a) next b))))

(define (accumulate-iter combiner null-value func a next b)
  (define (iter x result)
    (if (> x b)
	result
	(iter (next x)
	      (combiner result
			(func x)))))
  (iter a null-value))

(define (filtered-accumulate combiner null-value func a next b filter)
  (if (> a b)
      null-value
      (if (filter a)
	  (combiner (func a)
		    (filtered-accumulate combiner null-value func (next a) next b filter))
	  (filtered-accumulate combiner null-value func (next a) next b filter))))

(define (inc i) (+ i 1))

(define (sum-of-squares-of-primes a b)
  (define (sum a b) (+ a b))
  (define (square x) (* x x))
  (filtered-accumulate sum 0 square a inc b prime?))


;; 3 7 9 
(define (product-relative-primes n)
  (define (gcd a b)
    (if (= b 0)
	a
	(gcd b
	     (remainder a b))))
  (define (relatively-prime x)
    (= 1 (gcd x n)))
  (define (product a b) (* a b))
  (define (identity x) x)

  (filtered-accumulate product 1 identity 1 inc n relatively-prime))
