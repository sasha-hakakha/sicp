(define-module (general utils)
  #:export (println)
  #:export (prime?))

;; TODO take list of args
;; NOTE: something about this feels wrong...
(define (println x)
  (display x)
  (newline))

(define (prime? n)
  (define (F n i) "helper"
    (cond ((< n (* i i)) #t)
          ((zero? (remainder n i)) #f)
          (else
           (F n (+ i 1)))))
 "primality test"
 (cond ((< n 2) #f)
     (else
      (F n 2))))

;; excercise 1.30
(define (summation term a next b)
  (define (iter x result)
    (if (> x b)
	result
	(iter (next x) (+ result (term x)))))
  (iter a 0))
