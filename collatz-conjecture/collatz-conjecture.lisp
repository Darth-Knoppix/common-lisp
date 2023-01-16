(defpackage :collatz-conjecture
  (:use :cl)
  (:export :collatz))

(in-package :collatz-conjecture)

(defun collatz (n)
  (if (<= n 0)
      nil
      (progn
        (setq i (cond
                ((= n 1) n)
                ((evenp n) (/ n 2))
                ((oddp n) (+ 1 (* n 3)))))

         (if (= n 1)
           0
           (+ 1 (collatz i))))))
