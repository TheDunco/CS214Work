;;;; array_util.clj provides functions for filling in and printing arrays
;;;;
;;;; Input: values from the user
;;;; Output: values will be printed back
;;;;
;;;; Usage: clojure -m array_util
;;;;
;;;; By: Duncan Van Keulen
;;;; Date: 2-12-2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns array_util)      ; the name of the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; fill_array() fills an array with values from the user
;;; Receive: the array to be filled
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; print_array() prints out the values in an array
;;; Receive: the array to be printed
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; main function
;;; Input: 
;;; Output: 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
  
  (print "Enter the size of the array: ")
  (let
    itsSize (read)
    (fill_array itsSize)
  )


)
