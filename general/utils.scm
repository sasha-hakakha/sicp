(define-module (general utils)
  #:export (println))

;; TODO take list of args
;; NOTE: something about this feels wrong...
(define (println x)
  (display x)
  (newline))

;; excercise 1.30
(define (summation term a next b)
  (define (iter x result)
    (if (> x b)
	result
	(iter (next x) (+ result (term x)))))
  (iter a 0))
