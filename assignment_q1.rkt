#lang racket
(define cons1(cons 34 76))
(define cons2(cons 34 (cons 76 (cons 11 empty))))
(define cons3(cons 'random (cons 91 (cons (cons 34 (cons 76 (cons 11 empty))) empty))))
(define list1(list 'random 91 (list 34 76 11)))
(define append1(append '(random) '(91) '((34 76 11))))
