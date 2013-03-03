#lang racket

;; Question:
;;   Find the number of elements of a list.

;; Consumes a list and returns its length.
(define (my-length lst)
  (foldl (lambda (x y) (+ 1 y)) 0 lst))

(provide my-length)
