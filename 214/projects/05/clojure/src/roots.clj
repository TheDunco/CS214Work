;;;; roots.clj  string into two substrings.
;;;;
;;;; Input: a, b, c, corresponding values to the quadratic function values
;;;; Output: the roots of the quadratic function
;;;;
;;;; Usage: clojure -m roots
;;;;
;;;; By: Duncan Van Keulen
;;;; Date: 2-9-2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns roots)      ; the name of the program

(defn ** [x n] (reduce * (repeat n x)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; roots() calculates the roots of a quadratic function.  
;;; Receive: a, b, c: values for quadratic equation.
;;; PRE: a != 0, b^2 - 4ac is positive.
;;; Return: the roots of the function
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn roots [a, b, c]
  (if (not= a 0) 
    (let
      [arg (- (** b 2) (* 4(* a c)))]
      (if (>= arg 0) 
        (let [
          root1 ((/ (+ (- 0 b) (Math/sqrt arg)) (* 2 a)))
          root2 ((/ (- (- 0 b) (Math/sqrt arg)) (* 2 a)))
          ]
          (vector root1 root2)
        )
        ;; else: discriminant is negative
        (do 
          (print "roots: discriminant is negative!")
        )
      )
    )
    ;; else: a is 0
    (do
      (print "roots: a is zero!")
    ) 
  )
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; main function
;;; Input: a, b, c the values in the quadratic function
;;; Output: the roots of that quadratic function
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
  (print "To calculate the roots of a quadratic equation,\nEnter a: ") (flush)
  (let
    [a (read)]
    (print "Enter b: ") (flush)
    (let 
      [b (read)]
    (print "Enter c: ") (flush)
      (let
        [c (read)]
        (let [
          result (roots a b c)
          root1 (get result 0)
          root2 (get result 1)
          ]
          (print (format "The roots are %d and %d" root1 root2))
        )
      )
    )
  )
)


