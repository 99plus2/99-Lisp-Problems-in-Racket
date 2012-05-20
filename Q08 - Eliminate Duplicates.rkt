#lang racket

;; Question:
;; Eliminate consecutive duplicates of list elements.
;;    If a list contains repeated elements they should be replaced with a single copy of the element. 
;;    The order of the elements should not be changed.
;;
;;    Example:
;;    (compress '(a a a a b c c a a d e e e e))
;; => '(a b c a d e)

;; Compresses the list.
(define (compress lst)
  (foldr (lambda (x y) (cond
                         [(empty? y) (list x)]
                         [(equal? x (first y)) y]
                         [else (cons x y)])) empty lst))