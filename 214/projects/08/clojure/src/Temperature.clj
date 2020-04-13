;; TemperatureTable.cljis a module for Temperautres
;;
;; Usage: clojure -m TemperatureTable
;;
;; Completed by: Duncan Van Keulen
;; Date: 4/12/2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(require '[clojure.string :as str])


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
    :else true
  )   
)

(defn toFahrenheit [^Temperature temp]
  (cond
    (= \F (getScale temp)) (make-Temperature (getDegree temp) \F)
    (= \f (getScale temp)) (make-Temperature (getDegree temp) \F)
    (= \C (getScale temp)) (make-Temperature (+ (* (/ 9.0 5.0) (getDegree temp)) 32.0) \F)
    (= \c (getScale temp)) (make-Temperature (+ (* (/ 9.0 5.0) (getDegree temp)) 32.0) \F)
    (= \K (getScale temp)) (make-Temperature (+ (* (/ 9.0 5.0) (- (getDegree temp) 273.15)) 32.0) \F)
    (= \k (getScale temp)) (make-Temperature (+ (* (/ 9.0 5.0) (- (getDegree temp) 273.15)) 32.0) \F)
  )
)

(defn toCelsius [^Temperature temp]
  (cond
    (= \F (getScale temp)) (make-Temperature (* (/ 5.0 9.0) (- (getDegree temp) 32.0)) \C)
    (= \f (getScale temp)) (make-Temperature (* (/ 5.0 9.0) (- (getDegree temp) 32.0)) \C)
    (= \C (getScale temp)) (make-Temperature (getDegree temp) \C)
    (= \c (getScale temp)) (make-Temperature (getDegree temp) \C)
    (= \K (getScale temp)) (make-Temperature (- (getDegree temp) 273.15) \C)
    (= \k (getScale temp)) (make-Temperature (- (getDegree temp) 273.15) \C)
    :else false
  )
)

(defn toKelvin [^Temperature temp] 
  (= \F (getScale temp)) (make-Temperature (* (/ 5.0 9.0) (+ (getDegree temp) 459.67)) \K)
	(= \f (getScale temp)) (make-Temperature (* (/ 5.0 9.0) (+ (getDegree temp) 459.67)) \K)
	(= \C (getScale temp)) (make-Temperature (+ (getDegree temp) 273.15) \K)
	(= \c (getScale temp)) (make-Temperature (+ (getDegree temp) 273.15) \K)
	(= \K (getScale temp)) (make-Temperature (getDegree temp) \K)
	(= \k (getScale temp)) (make-Temperature (getDegree temp) \K)
	:else false
)

(defn enterTemperature []
  (let 
    [
      input (read-line)
      splicedInput (str/split input #" ")
      inputDegree (Float/parseFloat (first splicedInput))
      inputScale (get (second splicedInput) 0)\
    ]
    (if (isValidTemperature inputDegree inputScale)
      (->Temperature inputDegree inputScale)
      (println "Couldn't enter temperature")
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
    (print "Could not raise temperature")
  )  
)

(defn lowerTemperature [^Temperature temp degree]
  (if (isValidTemperature (- (getDegree temp) degree) (getScale temp)) 
    ;; True
    (make-Temperature (- (getDegree temp) degree) (getScale temp))
    ;; False
    (print "Could not lower temperature")
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
