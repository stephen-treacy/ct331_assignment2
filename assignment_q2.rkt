#lang racket

(provide ins_beg)
(provide ins_end)
(provide count_top_level)
(provide count_instances)

(define (ins_beg el lst)
  (append (cons el '()) lst))
  
(define (ins_end el list)
  (append lst (lsit el)))
  
(define (count_top_level lst)
  (cond
   [(empty? lst) 0]
   [else (+ 1 (count_top_level (rest lst)))]))
   
(define (count_instances lst item)
  (cond ((null? lst) 0)
      ((= (car lst) item) (+ 1 (count_instances (cdr lst) item)))
        (else (count_instances (cdr lst) item))))
