#lang sicp

#|
条件式と述語
|#

;絶対値を返す関数abs
(define (abs x)
    (cond 
        ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(abs 10) ;10
(abs 0) ;0
(abs -111111111111111111)

;演算子を返す場合分けで書く
(define (abs2 x)
    ((if (< 0 x) + -) x))

(abs2 10) ;10
(abs2 0) ;0
(abs2 -111111111111111111)

;notについて
(not #t) ;#f
(not #f) ;#t
(not 1) ;
(not 0) ;
(not '()) ;
(not (list)) ;
