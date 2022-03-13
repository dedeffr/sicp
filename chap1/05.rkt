#lang sicp

;無限に再帰する関数
;(p)という式が基本式になるまでをたどろうとする
(define (p) (p))


(define (test x y)
  (if (= x 0) 0 y))

;test_case_1
(test 0 (+ 0 1))
; 0

;test_case_2
(test 0 (p))
; (処理が終わらない)