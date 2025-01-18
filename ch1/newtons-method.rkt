;; 1.40
#lang racket

(require "fixed-point.rkt")

(define (deriv g)
  (let ((dx 0.0001))
    (lambda (x)
      (/ (- (g (+ x dx)) (g x))
        dx))))
    
(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((deriv g) x)))))

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

(define (cubic a b c)
  (lambda (x)
    (+ (* x x x)
       (* (* x x) a)
       (* x b)
       c)))

(let ((x (newtons-method (cubic 2 -7 1) 1)))
  (display x))
