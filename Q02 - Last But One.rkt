#lang racket

;; Consumes a list and returns the last 2 elements in it.
(define (my-but-last lst)
  (cond
    [(or (empty? lst) (empty? (rest lst)) (empty? (rest (rest lst)))) lst]
    [else (my-but-last (rest lst))]))