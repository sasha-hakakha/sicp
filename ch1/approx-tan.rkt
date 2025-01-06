#lang typed/racket

(: approx-tan (-> Real Integer Real))
(define (approx-tan x k)
  (define num (* x x))
  (define (denom [i : Integer]) : Integer (+ (* (- i 1) 2) 1))
  (define (cont-frac-loop [i : Integer]) : Real
    (if (> i k)
        (/ num (denom i))
        (- (denom i)
           (/ num
              (cont-frac-loop (+ i 1))))))
  (/ x
     (cont-frac-loop 1)))
