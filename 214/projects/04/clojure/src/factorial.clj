;;;; factorial displays the factorial of a number
;;;;
;;;; Input: n, a number
;;;; Precondition: n is a positive number
;;;; Output: The factorial of the input number
;;;;
;;;; By: Duncan Van Keulen
;;;; Date: 2-27-2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns factorial)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; factorial computes n!
;;; Input: n, a positive number
;;; Output: The factorial of that number to the console
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn factorial [n] 
    (def ^:dynamic answer 1)
    (loop [count 2]
      when ((<= count n)
        (* answer count)
        (println answer count)
        (recur (+ count 1))))
    (print n) (print "! = ")
    (println answer)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; -main is a 'driver' for the factorial function.
;;; Input: n, a positive number
;;; Output: The factorial of that number
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defn -main [] 
    (print "Enter a number: ") (flush)
    (def number)
    (let 
        [ number (double (read))]
    )
    (factorial number)

)