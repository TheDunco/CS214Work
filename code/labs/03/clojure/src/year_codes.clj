;;;; year_codes.clj is a driver for function yearCode.
;;;;
;;;; Input: An academic year, one of {freshman, sophomore,
;;;;                                  junior, senior}.
;;;; Output: The code for that academic year
;;;;         (1, 2, 3, 4 for valid entries; 
;;;;          0 for invalid entries).
;;;;
;;;; Usage: clojure -m year_codes
;;;;
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Duncan Van Keulen
;;;; Date: 2-20-2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns year_codes)                    ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; yearCode() returns the code for a given academic year.
;;; Receive: year, a string.
;;; Precondition: year is one of 
;;;   {freshman, sophomore, junior or senior}.
;;; Return: the integer code corresponding to year.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn yearCode [Year]
   (if (= Year "freshman") 1 (
      if (= Year "sophomore") 2 (
         if (= Year "junior") 3 (
            if (= Year "senior") 4 0
            )
         )
      )
   )  
)

;; solution using the cond function
(defn yearCode2 [year]
   (cond
     (= year "freshman")  1
     (= year "sophomore") 2
     (= year "junior")    3
     (= year "senior")    4
     :else                0
   )
)

;; solution using the case function
(defn yearCode3 [year]
   (case year
     "freshman"  1
     "sophomore" 2
     "junior"    3
     "senior"    4
                 0 ; default
   )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main() test-drives our yearCode() function.
;;; Input: year: one of {freshman, sophomore, junior, or senior}.
;;; Output: the code corresponding to year.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
 (print "\nEnter your academic year: ") (flush)
 (let
    [ year (read-line) ]                ; read year (a string)
    (println " yearCode 1: " (yearCode year) "\n")      ; display code of yearCode 1 output
    (println " yearCode 2: " (yearCode year) "\n")      ; display code of yearCode 2 output
    (println " yearCode 3: " (yearCode year) "\n")      ; display code of yearCode 3 output


 )
)
