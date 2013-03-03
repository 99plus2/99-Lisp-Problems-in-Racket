#lang racket

;; Question:
;; Generate the combinations of K distinct objects chosen from the N elements of a list
;; In how many ways can a committee of 3 be chosen from a group of 12 people? We all know that
;; there are C(12,3) = 220 possibilities (C(N,K) denotes the well-known binomial coefficients).
;; For pure mathematicians, this result may be great. But we want to really generate all the
;; possibilities in a list.
;;
;; Example:
;; (combination 3 '(a b c d e f))
;;  => '((a b c) (a b d) (a b e) ...etc. )

(define (combination k lst)
  (define (combination-helper k lst)
    (cond
      [(or (empty? lst) (> k (length lst))) (list lst)]
      [else (append (map (λ (x) (cons (first lst) x)) (combination-helper (sub1 k) (rest lst))) (combination-helper k (rest lst)))]))
  (filter (λ (x) (= (length x) k)) (combination-helper k lst)))

(provide combination)
