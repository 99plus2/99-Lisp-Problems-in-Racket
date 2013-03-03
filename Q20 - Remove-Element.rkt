#lang racket

;; Question:
;; Remove the K'th element from a list.
;;   Example:
;;    (remove-at '(a b c d) 2)
;; => '(a c d)

;; Removes the k-th element from the list.
(define (remove-at lst k)
  (cond
    [(or (< k 1) (> k (length lst))) lst] ;; Do nothing if index is outside range.
    [(equal? k 1) (rest lst)]
    [else (cons (first lst) (remove-at (rest lst) (sub1 k)))]))

(provide remove-at)
