#lang racket

;; Question:
;;  Modified run-length encoding. Modify the result of problem P10 in such 
;;  a way that if an element has no duplicates it is simply copied into the 
;;  result list. Only elements with duplicates are transferred as (N E) lists.
;;
;;    Example:
;;    (encode-modified '(a a a a b c c a a d e e e e))
;;  => '((4 a) B (2 c) (2 a) d (4 e))

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
