#lang racket

;; Reverses a list
(define (my-reverse lst)
  (foldl cons empty lst))