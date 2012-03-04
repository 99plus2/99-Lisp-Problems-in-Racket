#lang racket

;; Question:
;;  Modified run-length encoding. Modify the result of problem P10 in such 
;;  a way that if an element has no duplicates it is simply copied into the 
;;  result list. Only elements with duplicates are transferred as (N E) lists.
;;
;;    Example:
;;    (encode-modified '(a a a a b c c a a d e e e e))
;;  => ((4 A) B (2 C) (2 A) D (4 E))

(define (encode-modified lst)
  (foldr (lambda (x y) 
           (define len (length x))
           (cond
             [(equal? len 1) (cons (first x) y)]
             [else (cons (list len (first x)) y)])) empty (pack lst)))

(define (pack lst)
  (foldr (lambda (x y) (cond
                         [(or (empty? y) (not (equal? x (first (first y))))) (cons (list x) y)]
                         [else (cons (cons x (first y)) (rest y))])) empty lst))
