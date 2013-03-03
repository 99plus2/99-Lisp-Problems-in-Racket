#lang racket

;; Question:
;; Insert an element at a given position into a list.
;;    Example:
;;     (insert-at 'alfa '(a b c d) 2)
;;  => '(a alfa b c d)

(define (insert-at element lst k)
  (cond
    [(equal? k 1) (cons element lst)]
    [else (cons (first lst) (insert-at element (rest lst) (sub1 k)))]))

(provide insert-at)
