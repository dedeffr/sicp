#lang sicp

#|
値に名前をつける
|#

(define size 2)

size ;2

(* 5 size) ;10

;例
(define pi 3.14159)
(define radius 10)
(* pi (* radius radius)) ;314.159

(define circumference (* pi radius))
circumference ;31.4159
