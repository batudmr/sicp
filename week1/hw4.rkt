; Write a predicate ordered? that takes a sentence of numbers as its argument
; and returns a true value if the numbers are in ascending order, or a false
; value otherwise.

#lang simply-scheme

(define (ordered sentence)
  (if (equal? (count sentence) 1) #t
      (cond ((< (first sentence) (first (bf sentence))) (ordered (bf sentence)))
            (else #f))))

; Provided solution:
; (define (ordered? sent)
;   (cond ((empty? (bf sent)) #t)
; 	((> (first sent) (first (bf sent))) #f)
; 	(else (ordered? (bf sent))) ))

; This procedure is written assuming that the argument is a sentence that
; contains at least one word and that all of the words are numbers.
