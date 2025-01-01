(use-modules (general utils))

(define (generate-new-row old)
  (define (pascal-process i row new)
    (if (< (+ i 1) (length row))
	(pascal-process (+ i 1)
			row
			(append new (list (+ (list-ref row i)
							 (list-ref row (+ i 1))))))
	(append new '(1))))
			   
  (cond ((null? old) '(1))
	((equal? old '(1)) '(1 1))
	(else (pascal-process 0 old '(1)))))

(define (print-pascal-rows current i row-count)
  (if (< i row-count)
    (begin
	(let ((new-row (generate-new-row current)))
	(println new-row)
	(print-pascal-rows new-row (+ i 1) row-count)))))

(define (pascal n)
  (if (> n  0)
      (print-pascal-rows '() 0 n)))

(pascal 7)
