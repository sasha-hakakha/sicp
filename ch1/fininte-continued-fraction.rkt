(define (cont-frac n d k)
  (define (cont-frac-loop i)
    (if (> i k)
        (/ (n i) (d i))
        (+ (d i)
           (/ (n i)
              (cont-frac-loop (+ i 1))))))
  (/ (n 1)
     (cont-frac-loop 1)))
           
(define (cont-frac-inverted n d k)
  (define (inside i current)
    (if (= i 1)  (/ (n 1) 
                    (+ (d 1) current))
        (let ((small (/ (n i) 
                         (+ (d i) current))))
          (inside (- i 1) small))))
  (inside k 0))
                                
(define d-list '(1 2 1 1 4 1 1 6 1 1 8))
(define (d i) (list-ref d-list i))

(define e-approx (+ 2
                    (cont-frac (lambda (x) 1.0)
                               d
                               (- (length d-list) 2))))

