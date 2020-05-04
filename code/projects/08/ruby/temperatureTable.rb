# temperatureTable.rb tests class Temperature and its operations
# by making a table of Temperatures
#
# Duncan Van Keulen for CS214 Project08
# Date: 4/13/2020
####################################################

load "Temperature.rb"
include TemperatureModule

def temperatureTable

    # Create and enter the values for the temprature objects
    baseTemp = Temperature.new(0.0, 'F')
    limitTemp = Temperature.new(0.0, 'F')

    print "Enter the base temperature: "
    baseTemp = baseTemp.enterTemperature()

    print "Enter the limit temperature: "
    limitTemp = limitTemp.enterTemperature()

    print "Enter the step value: "
    stepValue = gets.chomp.to_f

    puts "\n"
    puts "Fahrenheit\tCelsius\t\tKelvin"

    # Make a new Temperature to be the stepping Temperature
    stepTemp = baseTemp

    while (stepTemp.lessThan(limitTemp))
        stepTemp.toFahrenheit().displayTemperature()
        stepTemp.toCelsius().displayTemperature()
        stepTemp.toKelvin().displayTemperature()
        puts "\n"
        # Increment stepTemps degree by the stepValue
        stepTemp = stepTemp.raiseTemperature(stepValue)
    end #while

end # temperatureTable

temperatureTable
