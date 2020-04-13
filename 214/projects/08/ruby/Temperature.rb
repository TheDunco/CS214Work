# Temperature class module file
# 
# Duncan Van Keulen for CS214 Project08
# 4/13/2020
####################################

module TemperatureModule
    class Temperature

        ###################################################################
        # isValid() checks whether a Temperature type is valid          
        # Receive: degrees, myDegree Float;
        #          scale, myScale Character.         
        # Return: true if Temperature type is valid, false otherwise.     
        ###################################################################
        def isValidTemperature(degree, scale)
            case scale
            when 'F', 'f'
                if degree < -460.0
                    puts "Cannot have temperature below absolute zero (F)"
                    return false
                else
                    return true
                end #if
            when 'C', 'c'
                if degree < -273.15
                    puts "Cannot have temperature below absolute zero (C)"
                    return false
                else
                    return true
                end #if
            when 'K', 'k'
                if degree < 0
                    puts "Cannot have temperature below absolute zero (K)"
                    return false
                else
                    return true
                end #if
            else
                puts "Invalid temperature"
                return false
            end #case
        end #isValidTemperature

        def initialize(degree, scale)
            if isValidTemperature(degree, scale)
                @myDegree, @myScale = degree, scale
            end
        end

        attr_reader :myDegree, :myScale

        def raiseTemperature(degrees)
            if isValidTemperature((self.myDegree + degrees), @myScale)
                return Temperature.new((@myDegree + degrees), @myScale)
            else
                puts "Could not raise temperature"
            end #if
        end #raiseTemperature

        def lowerTemperature(degrees)
            if isValidTemperature((@myDegrees - degrees), @myScale)
                return Temperature.new((@myDegree - degrees), @myScale)
            else
                puts "Could not raise temperature"
            end #if
        end #lowerTemperature

        def toFahrenheit()
            case @myScale
            when 'F', 'f'
                # Already in Fahrenheit
                return self
            when 'C', 'c'
                newDeg = ((9.0/5.0) * @myDegree) + 32.0
                return Temperature.new(newDeg, 'F')
            when 'K', 'k'
                newDeg = ((@myDegree - 273.15) * (9.0/5.0)) + 32.0
                return Temperature.new(newDeg, 'F')
            else
                puts "Invalid temperature scale [toF]"
                return false
            end #case
        end #toFahrenheit

        def toCelsius()
            case @myScale
            when 'F', 'f'
                newDeg = (5.0/9.0) * (@myDegree - 32.0)
                return Temperature.new(newDeg, 'C')
            when 'C', 'c'
                # Already in Celsius
                return self
            when 'K', 'k'
                newDeg = @myDegree - 273.15
                return Temperature.new(newDeg, 'C')
            else
                puts "Invalid temperature scale [toC]"
                return false
            end #case
        end #toCelsius

        def toKelvin()
            case @myScale
            when 'F', 'f'
                newDeg = ((@myDegree - 32) * (5.0 / 9.0)) + 273.15
                return Temperature.new(newDeg, 'K')
            when 'C', 'c'
                newDeg = @myDegree + 273.15
                return Temperature.new(newDeg, 'K')
            when 'K', 'k'
                # Already in Kevlin
                return self
            else
                puts "Invalid temperature [toK]"
                return false
            end #case
        end #toFahrenheit

        def enterTemperature()
            input = gets.split
            degree = input[0].to_f
            scale = input[1].to_s

            return Temperature.new(degree, scale)
        end

        def displayTemperature()
            print '%.5f' % @myDegree + " " + @myScale + "\t"
        end

        def equals(temp)
            return self.toFahrenheit().myDegree == temp.toFahrenheit.myDegree
        end

        def lessThan(temp)
            return self.toFahrenheit().myDegree < temp.toFahrenheit.myDegree
        end

    end #class Temperature
end #module TemperatureModule
