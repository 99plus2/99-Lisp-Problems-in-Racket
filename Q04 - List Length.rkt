#lang racket

;; Consumes a list and returns its length.
(define (my-length lst)
  (foldl (lambda (x y) (+ 1 y)) 0 lst))