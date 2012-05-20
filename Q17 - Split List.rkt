#lang racket

;; Question:
;;   Split a list into two parts; the length of the first part is given.
;;    Example:
;;     (split '(a b c d e f g h i k) 3)
;;  => '((a b c) (d e f g h i k))


;; Splits the given list in two sublists, where
;; the length of the first sublist is N.
(define (split lst n)
  (list (take lst n) (drop lst n)))