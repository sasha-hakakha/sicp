#!/usr/bin/guile -s 
!#

(define large-expression
  (/ (+ 4 5
	(- 2
	   (- 3 
	      (+ (/ 4 5)
		 6))))
     (* 3
	(- 6 2)
	(- 2 7))))

(define (sum-squares x y)
  (+ (* x x)
     (* y y)))

(define (sum-squares-largest x y z)
  (define min-var (min x y z))
  (cond ((= min-var x) (sum-squares y z))
	((= min-var y) (sum-squares x z))
	(else (sum-squares x y))))
 
