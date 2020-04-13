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

(defn make-Temperature [degree scale]
  (->Temperature degree scale)
)

(defn getDegree [^Temperature temp] 
  (:myDegree temp)
)

(defn getScale [^Temperature temp]
  (:myScale temp)
)

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

(defn enterTemperature []
  (let 
    [
      input (read-line)
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

(defn displayTemperature [^Temperature temp]
  (print (format "%.5f"(getDegree temp)) " " (getScale temp))
)

(defn raiseTemperature [^Temperature temp degree]
  (if (isValidTemperature (+ (getDegree temp) degree) (getScale temp)) 
    ;; True
    (make-Temperature (+ (getDegree temp) degree) (getScale temp))
    ;; False
    (do (print "Could not raise temperature") (flush))
  )  
)

(defn lowerTemperature [^Temperature temp degree]
  (if (isValidTemperature (- (getDegree temp) degree) (getScale temp)) 
    ;; True
    (make-Temperature (- (getDegree temp) degree) (getScale temp))
    ;; False
    (do (print "Could not lower temperature") (flush))
  )  
)

(defn equals [^Temperature temp1 ^Temperature temp2]
  (if (= (getDegree (toFahrenheit temp1)) (getDegree (toFahrenheit temp2)))
    ;; True-Section
      true ;; return true
    ;; False-Section
      false ;; return false
  )
)

(defn lessThan [^Temperature temp1 ^Temperature temp2]
  (if (< (getDegree (toFahrenheit temp1)) (getDegree (toFahrenheit temp2)))
    ;; True-Section
      true ;; return true
    ;; False-Section
      false ;; return false
  )
)
