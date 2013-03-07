#lang racket
(require typed/racket)

;; Require source files from parent directory
(require (file "../Q01 - Last Box.rkt"))
(require (file "../Q02 - Last But One.rkt"))
(require (file "../Q03 - K-th Element.rkt"))
(require (file "../Q04 - List Length.rkt"))
(require (file "../Q05 - Reverse List.rkt"))
(require (file "../Q06 - Palindrome.rkt"))
(require (file "../Q07 - Flatten.rkt"))
(require (file "../Q08 - Eliminate Duplicates.rkt"))
(require (file "../Q09 - Pack Duplicates.rkt"))
(require (file "../Q10 - Encode.rkt"))

(display "Testing q01-q10\n")

;; Q01 tests
(assert (equal? (my-last `(a b c d)) `(d)))
(assert (equal? (my-last `(1 2 3 4)) `(4)))
(assert (equal? (my-last `((a b) (c d))) `((c d))))

;; Q02 tests
(assert (equal? (my-but-last `(a b c d)) `(c d)))
(assert (equal? (my-but-last `(1 2 3 4)) `(3 4)))
(assert (equal? (my-but-last `((a b) (c d))) `((a b) (c d))))
(assert (equal? (my-but-last `((a b) c (d e))) `(c (d e))))

;; Q03 tests
(assert (equal? (element-at '(a b) 1) 'a))
(assert (equal? (element-at '(a b c d e) 3) 'c))
(assert (equal? (element-at '(a b c d e f) 6) 'f))

;; Q04 tests
(assert (equal? (my-length '()) 0))
(assert (equal? (my-length '(a)) 1))
(assert (equal? (my-length '(a b c d e)) 5))

;; Q05 tests
(assert (equal? (my-reverse '()) '()))
(assert (equal? (my-reverse '(a)) '(a)))
(assert (equal? (my-reverse '((0) (1))) '((1) (0))))
(assert (equal? (my-reverse '(a b c d e)) '(e d c b a)))

;; Q06 tests
(assert (palindrome? '()))
(assert (palindrome? '(a)))
(assert (palindrome? '(a o a)))
(assert (palindrome? '(x a m a x)))
(assert (not (palindrome? '(a b))))

;; Q07 tests
(assert (equal? (my-flatten '()) '()))
(assert (equal? (my-flatten '((a) ())) '(a)))
(assert (equal? (my-flatten '(() ((()) ((())) ()))) '()))
(assert (equal? (my-flatten '(a (b (c d) e))) '(a b c d e)))

;; Q08 tests
(assert (equal? (compress '()) '()))
(assert (equal? (compress '(() () ())) '(())))
(assert (equal? (compress '(a 1 1 1 a 1 1)) '(a 1 a 1)))
(assert (equal? (compress '(a a a a b c c a a d e e e e)) '(a b c a d e)))

;; Q09 tests
(assert (equal? (pack '()) '()))
(assert (equal? (pack '(() () ())) '((() () ()))))
(assert (equal? (pack '(a 1 1 1 a 1 1)) '((a) (1 1 1) (a) (1 1))))
(assert (equal? (pack '(a a a a b c c a a d e e e e)) '((a a a a) (b) (c c) (a a) (d) (e e e e))))

;; Q10 tests
(assert (equal? (encode '()) '()))
(assert (equal? (encode '(() () ())) '((3 ()))))
(assert (equal? (encode '(a 1 1 1 a 1 1)) '((1 a) (3 1) (1 a) (2 1))))
(assert (equal? (encode '(a a a a b c c a a d e e e e)) '((4 a) (1 b) (2 c) (2 a) (1 d) (4 e))))
