#lang racket

;; Question:
;; Create a list containing all integers within a given range.
;;    Example:
;;    (range-list 4 9)
;; => '(4 5 6 7 8 9)

(define (range-list x y)
  (define (create-list func x y)
    (cond
      [(equal? x y) (list x)]
      [else (cons x (range (func x) y))]))
  (create-list (if (<= x y) add1 sub1) x y))

(provide range-list)
