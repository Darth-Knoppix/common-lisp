(defpackage :triangle
  (:use :cl)
  (:export :triangle-type-p))

(in-package :triangle)

(defun triangle-type-p (type a b c)
  (cond
    ((not (triangle-equality a b c)) nil)
    ((eq type :equilateral) (cond
                              ((= a b c) t)
                              (t nil)))

    ((eq type :isosceles) (cond
                              ((and (= b c)) t)
                              ((and (= a b)) t)
                              ((and (= a c)) t)
                              (t nil)))
    ((eq type :scalene) (cond
                         ((/= a b c) t)
                              (t nil)))
    (t nil)))

(defun triangle-equality (a b c)
    (and
     (not (= 0 a b c))
     (>= (+ b c) a)
     (>= (+ a c) b)
     (>= (+ b a) c)))
