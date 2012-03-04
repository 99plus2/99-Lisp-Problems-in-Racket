#lang racket

;; Flattens the given nested list.
(define (my-flatten lst)
  (cond
    [(empty? lst) empty]
    [(list? (first lst)) (append (my-flatten (first lst)) (my-flatten (rest lst)))]
    [else (cons (first lst) (my-flatten (rest lst)))]))