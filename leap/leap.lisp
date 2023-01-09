(defpackage :leap
  (:use :cl)
  (:export :leap-year-p))
(in-package :leap)

(defun leap-year-p (year)
  (if
   (divisible-by-4 year)
   (if
    (divisible-by-100 year)
    (if
     (divisible-by-400 year)
     T
     nil)
    T)
   nil))

(defun evenly-divisible (num div) (= 0 (mod num div)))

(defun divisible-by-4 (num) (evenly-divisible num 4))

(defun divisible-by-100 (num) (evenly-divisible num 100))

(defun divisible-by-400 (num) (evenly-divisible num 400))
