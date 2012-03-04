#lang racket

;; Run-length encodes the given list.
(define (encode lst)
  (update-first (foldr (lambda (x y) (cond
                                       [(empty? y) (cons (list x) y)]
                                       [(equal? x (first (first y))) (cons (cons x (first y)) (rest y))]
                                       [else (cons (list x) (update-first y))])) empty lst)))

;; Compresses the first sublist of the given parameter list,
;; example:  (update-first `((a a a a) b (2 c))) => '((4 a) b (2 c))
(define (update-first lst)
  (cond
    [(empty? lst) empty]
    [(equal? (length (first lst)) 1) (cons (first (first lst)) (rest lst))]
    [else (cons (list (length (first lst)) (first (first lst))) (rest lst))]))