#lang simply-scheme

; Exercise 2
; Modify the procedure so that it correctly
; handles cases like (plural ’boy).
(define (plural wd)
  (if (and (equal? (last wd) 'y)
           (not (member? (last (bl wd)) '(a e i o u) )))
      (word (bl wd) 'ies)
      (word wd 's)))

; Provided Solution:
; (define (plural wd)
;   (if (and (equal? (last wd) 'y)
; 	   (not (vowel? (last (bl wd)))))
;       (word (bl wd) 'ies)
;       (word wd 's)))


; Exercise 3
; Define a procedure that takes three numbers as arguments and returns
; the sum of the squares of the two larger numbers.

(define (square x) (* x x))

(define (sumsquare x y z)
  (cond ((and (< x y) (< x z)) (+ (square z) (square y)))
        ((and (< y x) (< y z)) (+ (square x) (square z)))
        ((and (< z x) (< z y)) (+ (square y) (square x)))))

; Provided Solution:
; (define (sum-square-large a b c)
; (define (square x) (* x x))
; (define (sumsq x y) (+ (square x) (square y)))
;   (cond ((and (<= a b) (<= a c)) (sumsq b c))
; 	((and (<= b a) (<= b c)) (sumsq a c))
; 	(else (sumsq a b)) ))

; Exercise 4
; Write a procedure dupls-removed that, given a sentence as input, returns
; the result of removing duplicate words from the sentence.
; It should work this way:
; > (dupls-removed '(a b c a e d e b))
; (c a d e b)
; > (dupls-removed '(a b c))
; (a b c)
; > (dupls-removed '(a a a a b a a))
; (b a)

(define (dupls-removed sentence)
  (cond ((empty? sentence) '())
        ((member? (first sentence) (bf sentence)) (dupls-removed (bf sentence)))
        (else (se (first sentence) (dupls-removed(bf sentence))))))

; Provided Solution:
; (define (dupls-removed sent)
;   (cond ((empty? sent) '())
; 	((member? (first sent) (bf sent))
; 	 (dupls-removed (bf sent)))
; 	(else (sentence (first sent) (dupls-removed (bf sent))))))
