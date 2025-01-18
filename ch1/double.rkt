#lang racket

(define (inc x) 
  (+ x 1))

(define (double func)
  (lambda (x) (func (func x))))


(let ((answer (((double (double double)) inc) 5)))
  (display answer))
