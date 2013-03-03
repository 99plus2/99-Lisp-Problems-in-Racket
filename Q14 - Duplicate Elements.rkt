#lang racket

;; Question:
;;   Duplicate the elements of a list.
;;    Example:
;;    (dupli '(a b c c d))
;; => '(a a b b c c c c d d)

;; Duplicates every element in the given list.
(define (dupli lst)
  (foldr (lambda (x y) (cons x (cons x y))) empty lst))

(provide dupli)
