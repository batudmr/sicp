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