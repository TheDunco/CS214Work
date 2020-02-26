;;;; rectangle_area.clj calculates the area of a rectangle.
;;;;
;;;; Input: The height and width of a rectangle.
;;;; Output: The area of that rectangle.
;;;;
;;;; Usage: clojure -m rectangle_area
;;;;
;;;; Based off of CS214 Lab01 : Dr. Adams, for CS 214, at Calvin College.
;;;; Completed by: Duncan Van Keulen 
;;;; Date: 2-6-2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns rectangle_area) ; namespace function names the program

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;; Function rectangleArea() computes the area of a rectangle.
    ;;; Receive: itsHeight, itsWidth, a number.
    ;;; Return: the area of the corresponding rectangle.
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    (defn rectangleArea [itsHeight itsWidth]
      (* itsWidth itsHeight )  ; return H*W
    )
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;; Function -main is where execution begins
    ;;; Input: the height and width of a rectangle.
    ;;; Output: the area of that rectangle.
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    (defn -main []
        (println "\nTo compute the area of a rectangle,")

        (print   " enter its height: ") (flush)
        (let
            ;; Read in the height
            [ height (read) ]
            (print " enter its width: ")
            (flush)
            (let
                ;; Read in the width
                [ width (read) ]
                ;; Calculate and output the area
                (print "The area of the rectangle is: ")
                (println (rectangleArea height width))
                (flush)
            )
        )
    )  