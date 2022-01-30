(defpackage :grains
  (:use :cl)
  (:export :square :total))
(in-package :grains)

(defun square (n)
  "get num of square"
  (cond
   ((= n 1) 1)
   (t (* 2 (square (- n 1))))))

(defun total ()
  (- (square 65) 1))
