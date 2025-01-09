#lang racket


(define (pseudo-for x f)
  (if (not (empty? x))
      (begin
        (f (car x))
        (pseudo-for (cdr x) f))
      '() ))

(pseudo-for '(1 2 3 4) (lambda (x) (display x)))
