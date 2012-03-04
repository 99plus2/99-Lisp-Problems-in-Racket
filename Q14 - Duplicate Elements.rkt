#lang racket

;; Duplicates every element in the given list.
(define (dupli lst)
  (foldr (lambda (x y) (cons x (cons x y))) empty lst))