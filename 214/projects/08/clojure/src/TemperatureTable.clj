;; TemperatureTable.clj tests a Clojure Temperature type,
;;
;; Usage: clojure -m TemperatureTable
;;
;; Completed by: Duncan Van Keulen
;; Date: 4/12/2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns TemperatureTable)

;; Load the Temperature module
(load-file "src/Temperature.clj")

(defn -main [] 
	;; Get the baseTemp from the user
	(println "Enter the base temperature: ")
	(let [ baseTemp (enterTemperature) ]

		;; Get the limitTemp from the user
		(println "Enter the limit temperature: ")
		(let [ limitTemp (enterTemperature) ]

			;; Get the stepValue from the user
			(println "Enter the step value: ")
			(let [ stepValue (read) ]
				(newline) (println "      Fahrenheit          Celsius         Kelvin") (newline)
				
				(loop [i 0] 
					;; Loop while the baseTemp is less than or equal to the limitTemp
					(when (or (lessThan (raiseTemperature baseTemp i) limitTemp) 
								(equals (raise baseTemp i) limitTemp))
						(print "		")
						(displayTemperature (raise (toFahrenheit baseTemp) i))
						(print "		")
						(displayTemperature (raise (toCelsius baseTemp) i))
						(print "		")
						(displayTemperature (raise (toKelvin baseTemp) i))
						(newline)
						;; Recurse (loop) with i + stepvalue
						(recur (+ i stepValue))
					);; end when
					
				);; end loop
				
			);; end inner let
		)
	)






)