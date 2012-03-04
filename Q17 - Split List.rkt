#lang racket

;; Splits the given list in two sublists, where
;; the length of the first sublist is N.
(define (split lst n)
  (list (take lst n) (drop lst n)))