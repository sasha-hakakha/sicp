(define-module (ch1 cube-root))
(use-modules (general utils))
	     
(define (average x y)
  (/ (+ x y) 2))

(define (cube pain)
  (* pain pain pain))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.0001))

(define (improve guess x)
   (/ (+ (* 2 guess)
		       (/ x
			  (* guess guess)))
		    3))


(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x) x)))

(define (cube-root x)
  (cube-iter 1.0 x))

(define test
  (lambda ()
    (display (cube-root 13))))


(println (cube-root 13))
