; Write a procedure ends-e that takes a sentence as its argument and returns a
; sentence containing only those words of the argument whose last letter is E:
; > (ends-e '(please put the salami above the blue elephant))
; (please the above the blue)

#lang simply-scheme

(define (ends-e sentence)
  (if (empty? sentence) '()
      (if (equal? (last (first sentence)) 'e)
          (se (first sentence) (ends-e (bf sentence)))
          (ends-e (bf sentence)))))

; Provided solution:
; (define (ends-e sent)
;   (cond ((empty? sent) '())
; 	((equal? (last (first sent)) 'e)
; 	 (se (first sent) (ends-e (bf sent))))
; 	(else (ends-e (bf sent)))))