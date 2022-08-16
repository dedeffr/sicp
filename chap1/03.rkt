#lang sicp

;3数の平方和を取って、最小値の平方和を引く。

(define (square x) (* x x))

(define (smaller x y)
        (if (< x y) x y))

(define (smallest x y z)
        (smaller (smaller x y) z))

(define (solve a b c)
        (+ (square a) (square b) (square c)
           (- (square (smallest a b c)))))

(solve 3 10 100) ;10100
(solve 1 2 3) ;13
(solve -1 -1 -1) ;2
(solve 20 -20 0) ;400
(solve 0 0 0) ;0

;引数3つ→大きいもの2つ返すいい感じの書き方ないっすか？

#| やろうとした残骸
(define (bigger x y)
        (if (< x y) y) x))

(define (biggest x y z)
        (bigger (bigger x y) z))
|#