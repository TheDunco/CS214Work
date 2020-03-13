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

(defn fill_array [anArray itsSize]
  (loop [count 0]
    (if 
      (< count itsSize)  ;; condition
      (do
        (print "Enter the values of the array: ") (flush)                
        (aset anArray count (double (read)))  ;; then
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
;;;;;;;;;;;;;;;;;;;;;;;;;s;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn print_array [anArray itsSize] 
  (loop [count 0]
    (if (< count itsSize)
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
;;; Input: 
;;; Output: 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
  
  (print "Enter the size of the array: ") (flush)
  (let
    [
      itsSize (double (read))
      anArray (double-array itsSize) ;; make an array of length itsSize
    ]
    (fill_array anArray itsSize)
    (print "The values in the array are: \n")
    (print_array anArray itsSize)
  )


)
