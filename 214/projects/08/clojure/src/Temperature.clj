;; TemperatureTable.cljis a module for Temperautres
;;
;; Usage: clojure -m TemperatureTable
;;
;; Completed by: Duncan Van Keulen
;; Date: 4/12/2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require '[clojure.string :as str]) ;; include the Temperature module

;; Define a Temperature record with degree and scale attributes
(defrecord Temperature [myDegree myScale])

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; make-Temperature constructs a Temperature from a float and a character 
;;; Receive: degree : the degree of the temperature
;;; Recieve: scale : the scale that that degree is in
;;; Return: the Temperature (degree scale)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn make-Temperature [degree scale]
  (->Temperature degree scale)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getDegree returns the degree of the recieved temperature object
;;; Receive: temp : a temperature
;;; PRE: temp MUST be a temperature that's initialized
;;; Return: the myDegree attribute of that temp object
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn getDegree [^Temperature temp] 
  (:myDegree temp)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getScale returns the scale of the recieved temperature object
;;; Receive: temp : a temperature
;;; PRE: temp MUST be a temperature that's initialized
;;; Return: the myScale attribute of that temp object
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn getScale [^Temperature temp]
  (:myScale temp)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; isValidTemperature determines if a degree and scale would 
;;;     constitute a valid Temperature
;;; Receive: degree : the deree of the desired Temperature
;;; Recieve: scale : the scale of the desired Temperature
;;; Return: a boolean indicating whether or not the values provided
;;;     constitute a valid Temperature
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn isValidTemperature [degree scale] 
  (cond
    (= \F scale) (if (< degree -460.0) false true)
    (= \f scale) (if (< degree -460.0) false true)
    (= \C scale) (if (< degree -273.15) false true)
    (= \c scale) (if (< degree -273.15) false true)
    (= \K scale) (if (< degree 0.0) false true)
    (= \k scale) (if (< degree 0.0) false true)
    :else false
  )   
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; toFahrenheit converts a temperature to Fahrenheit from an arbitrary scale
;;; Receive: temp : the temperature to be converted
;;; Precondition: temp MUST be a Temperature and must be initialized
;;; Return: A new Temperature record with converted degree and scale
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn toFahrenheit [^Temperature temp]
  (cond
    ;; From Fahrenheit
    (= \F (getScale temp)) temp ;; no conversion needed
    (= \f (getScale temp)) temp ;; no conversion needed

    ;; From Celsius
    (= \C (getScale temp)) (make-Temperature (+ (* (/ 9.0 5.0) (getDegree temp)) 32.0) \F)
    (= \c (getScale temp)) (make-Temperature (+ (* (/ 9.0 5.0) (getDegree temp)) 32.0) \F)

    ;; From Kelvin
    (= \K (getScale temp)) (make-Temperature (+ (* (/ 9.0 5.0) (- (getDegree temp) 273.15)) 32.0) \F)
    (= \k (getScale temp)) (make-Temperature (+ (* (/ 9.0 5.0) (- (getDegree temp) 273.15)) 32.0) \F)

    :else false
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; toCelsius converts a temperature to Celsius from an arbitrary scale
;;; Receive: temp : the temperature to be converted
;;; Precondition: temp MUST be a Temperature and must be initialized
;;; Return: A new Temperature record with converted degree and scale
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn toCelsius [^Temperature temp]
  (cond
    ;; From Fahrenheit
    (= \F (getScale temp)) (make-Temperature (* (/ 5.0 9.0) (- (getDegree temp) 32.0)) \C)
    (= \f (getScale temp)) (make-Temperature (* (/ 5.0 9.0) (- (getDegree temp) 32.0)) \C)

    ;; From Celsius
    (= \C (getScale temp)) temp ;; no conversion needed
    (= \c (getScale temp)) temp ;; no conversion needed

    ;; From Kelvin
    (= \K (getScale temp)) (make-Temperature (- (getDegree temp) 273.15) \C)
    (= \k (getScale temp)) (make-Temperature (- (getDegree temp) 273.15) \C)

    :else false
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; toKelvin converts a temperature to Kelvin from an arbitrary scale
;;; Receive: temp : the temperature to be converted
;;; Precondition: temp MUST be a Temperature and must be initialized
;;; Return: A new Temperature record with converted degree and scale
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn toKelvin [^Temperature temp] 
  (cond
    ;; From Fahrenheit
    (= \F (getScale temp)) (make-Temperature (+ (* (- (getDegree temp) 32.0) (/ 5.0 9.0)) 273.15) \K)
    (= \f (getScale temp)) (make-Temperature (+ (* (- (getDegree temp) 32.0) (/ 5.0 9.0)) 273.15) \K)

    ;; From Celsius
    (= \C (getScale temp)) (make-Temperature (+ (getDegree temp) 273.15) \K)
    (= \c (getScale temp)) (make-Temperature (+ (getDegree temp) 273.15) \K)

    ;; From Kelvin
    (= \K (getScale temp)) temp ;; no conversion needed
    (= \k (getScale temp)) temp ;; no conversion needed

    :else false
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; enterTemperature allows a Temperature record's values to be 
;;;     entered by the user
;;; Recieve: degree and scale to be read in as input
;;; Precondition: the input degree and scale must consitute a
;;;     valid Temperature object
;;; Return: a new Temperature record with the user entered values
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn enterTemperature []
  (let 
    [
      input (read-line) ;; get the input from the user
      splicedInput (str/split input #" ")
      inputDegree (Float/parseFloat (first splicedInput))
      inputScale (get (second splicedInput) 0)
    ]
    (if (isValidTemperature inputDegree inputScale)
      (->Temperature inputDegree inputScale)
      (do (println "Couldn't enter temperature") (flush))
    )
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; dispalyTemperature prints a Temperature record to the screen
;;; Receive: temp : a Temperature
;;; Precondition: temp MUST be an initialized Temperature record
;;; Postcondition: the Temperature will be conveniently formatted
;;;     and printed to the screen
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn displayTemperature [^Temperature temp]
  (print (format "%.5f"(getDegree temp)) " " (getScale temp))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; raiseTemperature raises a temperature's degree attribute by
;;;     the input degrees
;;; Receive: temp : a Temperature record
;;; Recieve: degree : a float - the desired degrees to raise by
;;; Precondition: temp MUST be an initialized Temperature record
;;; Precondition: raising by degrees must consitute a valid Temperature
;;; Return: a new temperature with updated degrees
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn raiseTemperature [^Temperature temp degree]
  (if (isValidTemperature (+ (getDegree temp) degree) (getScale temp)) 
    ;; True
    (make-Temperature (+ (getDegree temp) degree) (getScale temp))
    ;; False
    (do (print "Could not raise temperature") (flush))
  )  
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; lowerTemperature lowers a temperature's degree attribute by
;;;     the input degrees
;;; Receive: temp : a Temperature record
;;; Recieve: degree : a float - the desired degrees to lower by
;;; Precondition: temp MUST be an initialized Temperature record
;;; Precondition: raising by degrees must consitute a valid Temperature
;;; Return: a new temperature with updated degrees
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn lowerTemperature [^Temperature temp degree]
  (if (isValidTemperature (- (getDegree temp) degree) (getScale temp)) 
    ;; True
    (make-Temperature (- (getDegree temp) degree) (getScale temp))
    ;; False
    (do (print "Could not lower temperature") (flush))
  )  
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; equals allows checking if two Temperatures are equal regardless of scale
;;; Receive: temp1 : Temperature - the lhs of the = operation
;;; Recieve: temp2 : Temprature - the rhs of the = operation
;;; Precondition: temp1 & temp2 MUST be initialized Temperature records
;;; Return: a boolean indicating whether or not the temperatures are equal
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn equals [^Temperature temp1 ^Temperature temp2]
  (if (= (getDegree (toFahrenheit temp1)) (getDegree (toFahrenheit temp2)))
    ;; True-Section
      true ;; return true
    ;; False-Section
      false ;; return false
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; lessThan allows checking if one Temperature is less than another regardless of scale
;;; Receive: temp1 : Temperature - the lhs of the < operation
;;; Recieve: temp2 : Temprature - the rhs of the < operation
;;; Precondition: temp1 & temp2 MUST be initialized Temperature records
;;; Return: a boolean indicating if temp1 < temp2
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn lessThan [^Temperature temp1 ^Temperature temp2]
  (if (< (getDegree (toFahrenheit temp1)) (getDegree (toFahrenheit temp2)))
    ;; True-Section
      true ;; return true
    ;; False-Section
      false ;; return false
  )
)
