#lang Racket
(define fact
  (lambda (n)
    (if (= n 1)
      n
      (* (fact (- n 1)) n)
     )
    )
  )

;(fact 5)
;(fact 4)
;(fact 8)
