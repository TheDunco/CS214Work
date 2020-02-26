;;;; average.clj is a driver for function averageGrade.
;;;;
;;;; Input: An academic average score
;;;; Output: The letter grade for that academic average
;;;;         (100, 80, 50... for valid entries; 
;;;;
;;;; Usage: clojure -m average
;;;;
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Duncan Van Keulen
;;;; Date: 2-20-2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns average)                    ; name the program

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;; average() returns the code for a given academic average.
    ;;; Receive: average, an integer.
    ;;; Precondition: average is an integer
    ;;; Return: the letter grade corresponding to the average.
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    (defn average [avg]
       (= avg (/ avg 10))
       (cond
         (>= avg 100)  "A"
         (>= avg 90)   "A"
         (>= avg 80)   "B"
         (>= avg 70)   "C"
         (>= avg 60)   "D"
         :else       "F"
       )
    )
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;; Function -main() test-drives our average() function.
    ;;; Input: average: an integer
    ;;; Output: the letter grade corresponding to average.
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    (defn -main []
     (print "\nEnter your academic average: ") (flush)
     (let
        [ avg (read) ]                                           ; read average (an integer)
        (println " Your letter grade: " (average avg) "\n")      ; display code of average's output
     )
    )
    
    