#lang racket

;; Question:
;;   Find the last box of a list.
;;    Example:
;;     (my-last '(a b c d))
;;  => '(d)

;; Consumes a list and returns the last element in it.
(define (my-last lst)
  (cond
    [(or (empty? lst) (empty? (rest lst))) lst]
    [else (my-last (rest lst))]))