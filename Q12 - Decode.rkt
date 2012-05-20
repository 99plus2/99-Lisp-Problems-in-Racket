#lang racket

;; Question:
;;  Decode a run-length encoded list. Given a run-length code list 
;;  generated as specified in problem P11. Construct its uncompressed version.

(define (decode lst)
  (foldr (lambda (x y) (append (unpack x) y)) empty lst))

;; Unpacks a list using build-list (helper for decode function)
;; example: (unpack (list 4 'a)) => `(a a a a)
(define (unpack element)
  (cond
   [(list? element) (build-list (first element) (lambda (x) (second element)))]
   [else (list element)]))
