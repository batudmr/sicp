;; Write a procedure squares that takes a sentence of numbers as its argument and returns a sentence of the squares of the numbers:
;; > (squares ’(2 3 4 5))
;; (4 9 16 25)

#lang simply-scheme

(define (squares nums)
  (if (empty? nums)
      '()
      (se (square (first nums))
	  (squares (bf nums)) )))

(define (square x)(* x x))