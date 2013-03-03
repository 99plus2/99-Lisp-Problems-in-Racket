#lang racket

;; Question:
;;  Extract a slice from a list. Given two indices, I and K, the slice is the list 
;;  containing the elements between the I'th and K'th element of the original list
;;  (both limits included). Start counting the elements with 1.
;;
;;    Example:
;;    (slice '(a b c d e f g h i k) 3 7)
;; => '(c d e f g)

;; Slices the given list.
(define (slice lst i k)
  (if (or (< k i) (<= i 0))
      (error `slice "Incorrect indices!")
      (take (drop lst (sub1 i)) (- k (sub1 i)))))

(provide slice)
