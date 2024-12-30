#!/usr/bin/guile -s 
!#

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? x y)
  (< (abs (- x y)) 0.0001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (define new-guess (improve guess x))
  (if (good-enough? new-guess guess)
      new-guess
      (sqrt-iter new-guess x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))
