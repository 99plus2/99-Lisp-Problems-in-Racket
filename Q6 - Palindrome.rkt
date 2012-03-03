#lang racket

;; Predicate: Checks if a list is a palindrome.
(define (palindrome? lst)
  (equal? lst (foldl cons empty lst)))