; Write a procedure switch that takes a sentence as its argument and returns a
; sentence in which every instance of the words I or me is replaced by you,
; while every instance of you is replaced by me except at the beginning of the
; sentence, where it’s replaced by I.
; (Don’t worry about capitalization of letters.)
; Example:
; > (switch '(You told me that I should wake you up))
; (i told you that you should wake me up)

#lang simply-scheme

(define (switch sent)
  (if (empty? sent) '()
      (cond
      ((equal? (item 1 sent) 'You) (se 'I (switch (butfirst sent))))
      ((member? (first sent) '(i I me)) (se 'you (switch (butfirst sent))))
      ((member? (first sent) '(you You)) (se 'me (switch (butfirst sent))))
      (else (se (first sent) (switch (butfirst sent)))))))


; Provided Solution:
; (define (switch1 sent)
;   (se (switch-first (first sent))
;       (switch-rest (bf sent)) ))

; (define (switch-first wd)
;   (cond ((equal? wd 'you) 'I)
; 	((equal? wd 'I) 'you)
; 	((equal? wd 'me) 'you)
; 	(else wd) ))

; (define (switch-rest sent)
;   (if (empty? sent)
;       '()
;       (se (switch-one (first sent))
; 	  (switch-rest (bf sent)) )))

; (define (switch-one wd)
;   (cond ((equal? wd 'you) 'me)
; 	((equal? wd 'I) 'you)
; 	((equal? wd 'me) 'you)
; 	(else wd) ))