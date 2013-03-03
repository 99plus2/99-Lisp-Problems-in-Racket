#lang racket

;; Question:
;; Sorting a list of lists according to length of sublists:
;;
;; a) We suppose that a list contains elements that are lists themselves. The
;;    objective is to sort the elements of this list according to their length.
;;    i.e. short lists first, longer lists later, or vice versa.
;;
;;    Example:
;;    (lsort '((a b c) (d e) (f g h) (d e) (i j k l) (m n) (o)))
;;     => '((o) (d e) (d e) (m n) (a b c) (f g h) (i j k l))
;;
;; b) Again, we suppose that a list contains elements that are lists themselves. But
;;    this time the objective is to sort the elements of this list according to their
;;    length frequency. i.e. in the default, where sorting is done ascendingly, lists
;;    with rare lengths are placed first, others with a more frequent length come later.
;;
;;    Example:
;;    (lfsort '((a b c) (d e) (f g h) (d e) (i j k l) (m n) (o)))
;;     => '((i j k l) (o) (a b c) (f g h) (d e) (d e) (m n))
;;
;;    Note that in the above example, the first two lists in the result have length 4 and 1,
;;    both lengths appear just once. The third and forth list have length 3 which appears twice
;;    (there are two list of this length). And finally, the last three lists have length 2.
;;    This is the most frequent length.
;;

(define (lsort lst)
  (sort lst < #:key length #:cache-keys? #t))

(define (lfsort lst)
  (define (lfrequency item lst)
    (define item-length (length item))
    (foldl (λ (x y) (if (= (length x) item-length) (add1 y) y)) 0 lst))
  
  (define (lfsort-helper lst)
    (cond
      [(empty? lst) empty]
      [else (define first-freq (lfrequency (first lst) lst))
            (append (lfsort (filter (λ (x) (< (lfrequency x lst) first-freq)) (rest lst)))
                    (list (first lst))
                    (lfsort (filter (λ (x) (>= (lfrequency x lst) first-freq)) (rest lst))))]))
  
  (lfsort-helper lst))

(provide lsort lfsort)
