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
    ;; Loop, passing answer and count through
    (loop [answer 1 count 2]
        ;; (println answer count) ;; debugging

        ;; When count > n, we have our answer
        (if (> count n) (do 
            (print n) (print "! = ")
            (println answer) )
        )
        (when (<= count n)
            ;; multiply answer by count and increment count when you pass through
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
    ;; Get n
    (print "Enter a number: ") (flush)
    (let 
        [ number (double (read))]
        (factorial number)
    )
)