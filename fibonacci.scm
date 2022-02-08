#lang Racket
(define (fib n)
   (helpy 1 1 (- n 2))
  )

(define (helpy first second remainder)
   (cond ((= remainder 0) second)
         ((= remainder -1) first)
         (else (helpy second
	                 (+ first second)
			 (- remainder 1))
               )
         )
  )

;(fib 4)
;(fib 10)
;(fib 100)

(define fibAlt
  (lambda(n)
    (if (< n 2)
        n
        (+ (fibAlt(- n 1)) (fibAlt (- n 2)))
    )
  )
)

;(fibAlt 4)
;(fibAlt 10)
;(fibAlt 100) ;DO NOT USE
