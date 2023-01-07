(defpackage :lillys-lasagna
  (:use :cl)
  (:export :expected-time-in-oven
           :remaining-minutes-in-oven
           :preparation-time-in-minutes
           :elapsed-time-in-minutes))

(in-package :lillys-lasagna)

;; Define function expected-time-in-oven
(defun expected-time-in-oven  ()
                              "Time in the oven in minuets"
                              337)

;; Define function remaining-minutes-in-oven
(defun remaining-minutes-in-oven  (elapsed)
                                  "Remaining minutes in the oven given elapsed time"
                                  (max 0 (- (expected-time-in-oven) elapsed)))

;; Define function preparation-time-in-minutes
(defun preparation-time-in-minutes (layers) "Sum of 19 minuets per layer" (* layers 19))

;; Define function elapsed-time-in-minutes
(defun elapsed-time-in-minutes  (layers elapsed)
                                "Total for prep and elapsed time"
                                (+ (preparation-time-in-minutes layers) elapsed))
