#lang racket

;; Consumes a list and returns the last element in it.
(define (my-last lst)
  (cond
    [(or (empty? lst) (empty? (rest lst))) lst]
    [else (my-last (rest lst))]))