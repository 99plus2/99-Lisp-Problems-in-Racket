#lang racket

;; Question:
;;  Reverse a list.

;; Reverses a list
(define (my-reverse lst)
  (foldl cons empty lst))

(provide my-reverse)
