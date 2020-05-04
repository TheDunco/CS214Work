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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; roots() calculates the roots of a quadratic function.  
;;; Receive: a, b, c: values for quadratic equation.
;;; PRE: a != 0, b^2 - 4ac is positive.
;;; Return: the roots of the function
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn roots [a b c]
  (if (= a 0) 
    ;; a is 0
    (println "roots: a is zero!")
  
    ;; else: a is not 0
    (let
      ;; compute the discriminant
      [arg (- (* b b) (* 4.0 (* a c)))]
      ;; make sure discriminant is not negative
      (if (>= arg 0.0) 
        (do
          ;; calculate the roots
          (def root1 (/ (+ (- 0.0 b) (Math/sqrt arg)) (* 2.0 a)))
          (def root2 (/ (- (- 0.0 b) (Math/sqrt arg)) (* 2.0 a)))
          
          ;; return a vector with the answers a bool indicating it suceeded
          (vector root1 root2 true)
        )
        ;; else: discriminant is negative
        (do 
          (println "roots: discriminant is negative!")
        )
      )
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
    ;; get the value of a
    [a (read)]
    (print "Enter b: ") (flush)
    (let 
      ;; get the value of b
      [b (read)]
    (print "Enter c: ") (flush)
      (let
        ;; get the value of c
        [c (read)]

        ;; get the result and grab each individual thing returned from the vector
        (let [
          result (roots a b c)
          root1 (get result 0)
          root2 (get result 1)
          succeeded (get result 2)
          ]
          ;; only print if it succeeded
          (if succeeded 
            (do 
              (println (format "The roots are %f and %f" root1 root2))
            )
          )
          ; else nothing
        )
      )
    )
  )
)


