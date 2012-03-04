#lang racket

;; Question:
;; Rotate a list N places to the left.
;;   Examples:
;;    (rotate '(a b c d e f g h) 3)
;; => (D E F G H A B C)
;;
;;    (rotate '(a b c d e f g h) -2)
;; => (G H A B C D E F)

;; Rotates a given list N places to the left.
;; (define (rotate lst n)