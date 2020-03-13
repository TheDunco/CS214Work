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
;;; Recieve: istSize: The size of the array to be filled
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn fill_array [anArray itsSize]
  (loop [count 0]
    (if 
      ;; condition
      (< count itsSize)
      ;; then
      (do
        (print "Enter the values of the array: ") (flush)
        ;; set the values of the array to user input                
        (aset anArray count (double (read)))
      )
      ;; else nothing
    )
    (when (< count itsSize)
      (recur (inc count))
    )
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; print_array() prints out the values in an array
;;; Receive: the array to be printed
;;; Recieve: istSize: The size of the array to be printed
;;;;;;;;;;;;;;;;;;;;;;;;;s;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn print_array [anArray itsSize] 
  (loop [count 0]
    (if 
      ;; condition
      (< count itsSize)
      ;; then
      (println (aget anArray count))
      ;; else nothing
    )
    (when (< count itsSize)
      (recur (inc count))
    )
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; main function
;;; Input: The vals of the array by the user
;;; Output: The values contained in the array
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
  (print "Enter the size of the array: ") (flush)
  (let
    [
      ;; get itsSize from the user
      itsSize (double (read))

      ;; make an array of length itsSize
      anArray (double-array itsSize) 
    ]
    ;; fill the array by calling the fill_array function
    (fill_array anArray itsSize)

    ;; print the values of the array
    (print "The values in the array are: \n")
    (print_array anArray itsSize)
  )
)
