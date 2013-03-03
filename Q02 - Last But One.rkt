#lang racket

;; Question:
;;   Find the last but one box of a list.
;;    Example:
;;     (my-but-last '(a b c d))
;;  => '(c d)

;; Consumes a list and returns the last 2 elements in it.
(define (my-but-last lst)
  (cond
    [(or (empty? lst) (empty? (rest lst)) (empty? (rest (rest lst)))) lst]
    [else (my-but-last (rest lst))]))

(provide my-but-last)
