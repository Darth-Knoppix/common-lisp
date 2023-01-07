(defpackage :log-levels
  (:use :cl)
  (:export :log-message :log-severity :log-format))

(in-package :log-levels)

(defun log-message (log-string)
  (subseq log-string 8))

(defun log-severity (log-string)
  (cond
    ((starts-with? "[info]" log-string) :everything-ok)
    ((starts-with? "[warn]" log-string) :getting-worried)
    ((starts-with? "[ohno]" log-string) :run-for-cover)))

(defun log-format (log-string)
  (log-message (case (log-severity log-string)
    (:everything-ok (string-downcase log-string))
    (:getting-worried (string-capitalize log-string))
    (:run-for-cover (string-upcase log-string)))))

(defun starts-with? (match str)
  (string= match (string-downcase (subseq str 0 (length match)))))
