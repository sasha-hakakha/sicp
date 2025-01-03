(define-module (ch1 product-range)
  #:export (product))

(use-modules (general utils))

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
	 (product term (next a) next b))))

(define (product-iter term a next b)
  (define (iter x result)
    (if (> x b)
	result
	(iter (next x) (* result (term x)))))
  (iter a 1))
  

(define (inc n) (+ n 1))

(define (identity x) x)

(define (factorial n)
    (product-iter identity 1 inc n))


