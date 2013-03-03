#lang racket
(require (file "Q17 - Split List.rkt"))

;; Question:
;; Rotate a list N places to the left.
;;   Examples:
;;    (rotate '(a b c d e f g h) 3)
;; => '(d e f g h a b c)
;;
;;    (rotate '(a b c d e f g h) -2)
;; => '(g h a b c d e f)

;; Rotates a given list N places to the left.
(define (rotate lst n)
  (define split-list (split lst n))
  (append (second split-list) (first split-list)))

(provide rotate)
