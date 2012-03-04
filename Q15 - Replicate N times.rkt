#lang racket

;; Replicates every element in the given list N times.
(define (repli lst n)
  (if (>= n 0) 
      (foldr (lambda (x y) (append (build-list n (lambda (a) x)) y)) empty lst)
      (error 'repli "Number must be positive!")))