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
	(print "Enter the base temperature: ") (flush)
	(let [ baseTemp (enterTemperature) ]

		;; Get the limitTemp from the user
		(print "Enter the limit temperature: ") (flush)
		(let [ limitTemp (enterTemperature) ]

			;; Get the stepValue from the user
			(print "Enter the step value: ") (flush)
			(let [ stepValue (read) ]
				(newline) (println "Fahrenheit              Celsius                 Kelvin") (newline)
				
				(loop [stepTemp baseTemp]
					;; Loop while the baseTemp is less than or equal to the limitTemp
					(when (lessThan stepTemp limitTemp) 

						;; Display table
						(displayTemperature (toFahrenheit stepTemp))
						(print "		")
						(displayTemperature (toCelsius stepTemp))
						(print "		")
						(displayTemperature (toKelvin stepTemp))
						(newline) (flush)

						;; Recurse with the temperature raised in the base scale
						(recur (raiseTemperature stepTemp stepValue))
					);; end when
					
				);; end loop
				
			);; end inner let
		)
	)
)
