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
    (loop [answer 1 count 2]
        (println answer count)
        (if (> count n) (do 
            (print n) (print "! = ")
            (println answer) )
        )
        (when (<= count n)
            (recur (* answer count) (inc count))
        )   
    )
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
    (factorial 5)

)