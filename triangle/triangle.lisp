(defpackage :triangle
  (:use :cl)
  (:export :triangle-type-p))

(in-package :triangle)

(defun triangle-type-p (type a b c)
  (cond 
    ((eq type :equilateral)
     (cond (
            ((= 0 a b c) nil)
            ((= a b c) t)
            (t nil)))
     
    ;; ((= type :isosceles)
    ;;  (cond (
    ;;         (() nil)
    ;;  )))
    ;; ((= type :scalene) ())
    (t nil)
     )
  )
)
