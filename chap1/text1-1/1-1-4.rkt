#lang sicp

#|
複合手続きを作る
(define (<名前> <仮引数> <本体>))
|#

(define (square x) (* x x))

(square 21) ;441
(square (+ 2 5)) ;49
(square (square 3)) ;81

(define (sum-of-square x y)
    (+ (square x) (square y)))

(sum-of-square 3 4) ;25

;これはなんか数学的な意味があるんですか？
(define (f a)
    (sum-of-square (+ a 1) (* a 2)))

(f 5) ;136