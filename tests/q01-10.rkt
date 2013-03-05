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
(assert (equal? (element-at '(a b c d e) 3) 'c))

;; Q04 tests
;; Q05 tests
;; Q06 tests
;; Q07 tests
;; Q08 tests
;; Q09 tests
;; Q10 tests
