#lang racket

;; Question:
;; Drop every N'th element from a list.
;;
;;   Example:
;;    (drop-element '(a b c d e f g h i k) 3)
;; => '(a b d e g h k)

;; Drops every N-th element in the given list.
(define (drop-element lst n)
  (define N n)
  
  (define (drop-helper lst n)
    (cond
      [(empty? lst) lst]
      [(equal? n 1) (drop-helper (rest lst) N)]
      [else (cons (first lst) (drop-helper (rest lst) (- n 1)))]))
  
  (drop-helper lst n))

(provide drop-element)
