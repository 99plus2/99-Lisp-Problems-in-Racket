#lang racket

;; Question:
;; Draw N different random numbers from the set 1...M.
;; The selected numbers shall be returned in a list.
;; Example:
;; (lotto-select 6 49)
;; => '(23 1 17 33 21 37)

(require (file "Q22 - Range.rkt"))
(require (file "Q23 - Random-Select.rkt"))

(define (lotto-select n m)
  (rnd-select (range 1 m) n))

(provide lotto-select)
