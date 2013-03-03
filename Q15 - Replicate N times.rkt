#lang racket

;; Question:
;;   Replicate the elements of a list a given number of times.
;;    Example:
;;     (repli '(a b c) 3)
;;  => '(a a a b b b c c c)

;; Replicates every element in the given list N times.
(define (repli lst n)
  (if (>= n 0) 
      (foldr (lambda (x y) (append (build-list n (lambda (a) x)) y)) empty lst)
      (error 'repli "Number must be positive!")))

(provide repli)
