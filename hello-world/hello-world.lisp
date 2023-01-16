(defpackage :hello-world
  (:use :cl)
  (:export :hello))

(in-package :hello-world)

(defun hello () "Hello, World!")

(defun gg (v)
  (string-capitalize v))

(+ 1 3 4)
