#lang sicp

;引数3つ→返り値2つ がわからなかったので, 最小値を返してその分引いた
;
(define (square x) (* x x))
(define (sumsq x y) (+ (square x) (square y)))
#|
(define (bigger x y)
        (cond ((< x y) y)
              (else x)))
        ;(if (< x y) y) x))
(define (biggest x y z)
        (bigger (bigger x y) z))
|#    
(define (smaller x y)
        (cond ((< x y) x)
              (else y)))
(define (smallest x y z)
        (smaller (smaller x y) z))

(define (solve a b c)
        (+ (square a) (square b) (square c)
           (- (square (smallest a b c)))))

(solve 3 10 100)
;10100
(solve 1 2 3)
(solve -1 -1 -1)
(solve 20 -20 0)