#lang racket
(require typed/racket)

;; Require source files from parent directory
(require (file "../Q11 - Encode Modified.rkt"))
(require (file "../Q12 - Decode.rkt"))
(require (file "../Q13 - Direct Encode.rkt"))
(require (file "../Q14 - Duplicate Elements.rkt"))
(require (file "../Q15 - Replicate N times.rkt"))
(require (file "../Q16 - Drop N-th element.rkt"))
(require (file "../Q17 - Split List.rkt"))
(require (file "../Q18 - Slice List.rkt"))
(require (file "../Q19 - Rotate List.rkt"))
(require (file "../Q20 - Remove-Element.rkt"))

(display "Testing q11-q20\n")

;; Q11 tests
(assert (equal? (encode-modified '()) '()))
(assert (equal? (encode-modified '(() () ())) '((3 ()))))
(assert (equal? (encode-modified '(a 1 1 1 a 1 1)) '(a (3 1) a (2 1))))
(assert (equal? (encode-modified '(a a a a b c c a a d e e e e)) '((4 a) b (2 c) (2 a) d (4 e))))

;; Q12 tests
(assert (equal? (decode '()) '()))
(assert (equal? (decode '((3 ()))) '(() () ())))
(assert (equal? (decode '(a (3 1) a (2 1))) '(a 1 1 1 a 1 1)))
(assert (equal? (decode '((4 a) b (2 c) (2 a) d (4 e))) '(a a a a b c c a a d e e e e)))

;; Q13 tests
(assert (equal? (encode-direct '()) '()))
(assert (equal? (encode-direct '(() () ())) '((3 ()))))
(assert (equal? (encode-direct '(a 1 1 1 a 1 1)) '(a (3 1) a (2 1))))
(assert (equal? (encode-direct '(a a a a b c c a a d e e e e)) '((4 a) b (2 c) (2 a) d (4 e))))

;; Q14 tests
(assert (equal? (dupli '()) '()))
(assert (equal? (dupli '(0)) '(0 0)))
(assert (equal? (dupli '(a b c c d)) '(a a b b c c c c d d)))
(assert (equal? (dupli '(1 1 2 3 4 4)) '(1 1 1 1 2 2 3 3 4 4 4 4)))

;; Q15 tests
(assert (equal? (repli '() 10) '()))
(assert (equal? (repli '(0) 0) '()))
(assert (equal? (repli '(a b c) 3) '(a a a b b b c c c)))
(assert (equal? (repli '(1 1 2 3 4 4) 2) '(1 1 1 1 2 2 3 3 4 4 4 4)))

;; Q16 tests
(assert (equal? (drop-element '() 5) '()))
(assert (equal? (drop-element '() -1) '()))
(assert (equal? (drop-element '(a) 1) '()))
(assert (equal? (drop-element '(a) 2) '(a)))
(assert (equal? (drop-element '(a b c d e f g h i k) 1) '()))
(assert (equal? (drop-element '(a b c d e f g h i k) 2) '(a c e g i)))
(assert (equal? (drop-element '(a b c d e f g h i k) 3) '(a b d e g h k)))

;; Q17 tests
(assert (equal? (split '() 0) '(() ())))
(assert (equal? (split '(1 2 3) 0) '(() (1 2 3))))
(assert (equal? (split '(1 2 3) 2) '((1 2) (3))))
(assert (equal? (split '(a b c d) 4) '((a b c d) ())))
(assert (equal? (split '(a b c d e f g h i k) 3) '((a b c) (d e f g h i k))))

;; Q18 tests


;; Q19 tests


;; Q20 tests


