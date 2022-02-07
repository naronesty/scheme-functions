#lang Racket
(define gcd
  (lambda(a b)
    (if (= a b)
        a
        (if (> a b)
            (gcd (- a b) b)
            (gcd a (- b a))
            )
        )
    )
  )

;(gcd 48 18)
;(gcd 18 48)
;(gcd 25 125)