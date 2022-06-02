;; gosh> (gauche-version)
;; "0.9.10"
;; > (add-load-path "./j-bob/scheme")
;; > (use me)
;; リロード時 > (reload 'me)


;; モジュールのインタフェースの定義
(define-module me
  (use j-bob-lang)
  (use j-bob)
  (export
    test_func
    chap1.exa1
  )
)

;; モジュール本体
(select-module me)

(define test_func
  (+ 5 7) ; 12
)

;; (chap1.exa1) => 'ham
(defun chap1.exa1 ()
  (J-Bob/step (prelude)
    '(car (cons 'ham '(eggs)))
    '(((1) (cons 'ham '(eggs))) ; この部分を eval
      (() (car '(ham eggs)))))) ; この部分を eval

(provide "me")



