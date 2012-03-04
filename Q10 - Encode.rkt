#lang racket

;; Question:
;;  Use the result of problem P09 to implement the so-called run-length encoding data compression 
;;  method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number 
;;  of duplicates of the element E.
;;
;;    Example:
;;    (encode '(a a a a b c c a a d e e e e))
;; => ((4 A) (1 B) (2 C) (2 A) (1 D)(4 E))

(define (encode lst)
  (foldr (lambda (x y) (cons (list (length x) (first x)) y)) empty (pack lst)))

(define (pack lst)
  (foldr (lambda (x y) (cond
                         [(or (empty? y) (not (equal? x (first (first y))))) (cons (list x) y)]
                         [else (cons (cons x (first y)) (rest y))])) empty lst))
