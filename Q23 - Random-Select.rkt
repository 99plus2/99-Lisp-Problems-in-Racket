#lang racket

;; Question:
;; Extract a given number of randomly selected elements from a list.
;; The selected items shall be returned in a list.
;;    Example:
;;    (rnd-select '(a b c d e f g h) 3)
;; => '(e d a)

(define (rnd-select lst n)
  (define (remove-at lst i)
    (cond
      [(equal? i 0) (rest lst)]
      [else (cons (first lst) (remove-at (rest lst) (sub1 i)))]))
  
  (define (random-element lst)
    (define rnd (random (length lst)))
    (list (list-ref lst rnd) (remove-at lst rnd)))
  
  (define (start lst n)
    (cond
      [(zero? n) empty]
      [else (define rnd (random-element lst))
            (cons (first rnd) (start (second rnd) (sub1 n)))]))
  
  (cond
    [(<= n 0) empty]
    [(> n (length lst)) lst]
    [else (start lst n)]))

(provide rnd-select)
