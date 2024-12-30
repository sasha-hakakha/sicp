(define-module (general utils)
  #:export (println))

;; TODO take list of args
:: NOTE: something about this feels wrong...
(define (println x)
  (display x)
  (newline))
