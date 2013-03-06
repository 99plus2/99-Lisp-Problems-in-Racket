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
(assert (equal? (encode-modified '(a a a a b c c a a d e e e e)) '((4 a) b (2 c) (2 a) d (4 e))))
