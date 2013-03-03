#lang racket

;; Question:
;; Generate a random permutation of the elements of a list.
;; Example:
;; (rnd-permu '(a b c d e f))
;;  => '(b a d c e f)

(require (file "Q23 - Random-Select.rkt"))

(define (rnd-permu lst)
  (rnd-select lst (length lst)))

(provide rnd-permu)
