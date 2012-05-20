#lang racket

;; Question:
;;   Flatten a nested list structure.
;;   Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).
;;      Example:
;;      (my-flatten '(a (b (c d) e)))
;;   => '(a b c d e)

;; Flattens the given nested list.
(define (my-flatten lst)
  (cond
    [(empty? lst) empty]
    [(list? (first lst)) (append (my-flatten (first lst)) (my-flatten (rest lst)))]
    [else (cons (first lst) (my-flatten (rest lst)))]))