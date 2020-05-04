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

        ###################################################################
        # initialize instantiates a Temperature object's myDegree and myScale values
        # Receive: degree : number - the desired degree of the Temperature
        # Recieve: scale : string/character - the desired scale of that degree        
        # Postcondition: Temperature object is initialized with myDegree and myScale
        ###################################################################

        def initialize(degree, scale)
            if isValidTemperature(degree, scale)
                @myDegree, @myScale = degree, scale
            end
        end

        ###################################################################
        # attr_reader defines the read or "get" methods for myDegree and myScale       
        # Return: myDegree or myScale of Temperature object
        ###################################################################

        attr_reader :myDegree, :myScale

        ###################################################################
        # raiseTemperature raises the degree of a Temperature by degrees
        # Receive: degrees : number - the number of degrees to raise by
        # Precondition: @myDegree + degrees must constitute a valid Temperature
        # Postcondition: @myDegree will be raised degrees
        ###################################################################

        def raiseTemperature(degrees)
            if isValidTemperature((self.myDegree + degrees), @myScale)
                return Temperature.new((@myDegree + degrees), @myScale)
            else
                puts "Could not raise temperature"
            end #if
        end #raiseTemperature

        ###################################################################
        # lowerTemperature lowers the degree of a Temperature by degrees
        # Receive: degrees : number - the number of degrees to be lowerd by
        # Precondition: @myDegree - degrees must constitute a valid Temperature
        # Postcondition: @myDegree will be lowered degrees
        ###################################################################

        def lowerTemperature(degrees)
            if isValidTemperature((@myDegrees - degrees), @myScale)
                return Temperature.new((@myDegree - degrees), @myScale)
            else
                puts "Could not raise temperature"
            end #if
        end #lowerTemperature

        ###################################################################
        # toFahrenheit() converts this Temperature to Fahrenheit from an arbitrary scale
        # Precondition: myDegree must be a valid degree in on of F, C, K scales
        # Return: A new Temperature object with converted degree and scale  
        ###################################################################

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

        ###################################################################
        # toCelsius() converts this Temperature to Celsius from an arbitrary scale
        # Precondition: myDegree must be a valid degree in on of F, C, K scales
        # Return: A new Temperature object with converted degree and scale  
        ###################################################################

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

        ###################################################################
        # toKelvin() converts this Temperature to Kelvin from an arbitrary scale
        # Precondition: myDegree must be a valid degree in on of F, C, K scales
        # Return: A new Temperature object with converted degree and scale  
        ###################################################################

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

        ###################################################################
        # enteTemperature allows a Temperature object's myDegree and myScale
        #       to be set to user entered values
        # Receive: A single string, entered by the user
        # Precondition: the input string must be in the form "#'s scale"
        #   where #'s is a number and scale is a single character representing
        #   the scale of the Temperature       
        # Return: A new Temperature object where degree and scale are set to
        #       the user-entered values
        ###################################################################

        def enterTemperature()
            input = gets.split
            degree = input[0].to_f
            scale = input[1].to_s

            return Temperature.new(degree, scale)
        end

        ###################################################################
        # displayTemperature() allows a Temperature object to be conveniently
        #       displayed (printed) to the screen      
        # Postcondition: This Temperature will be conveniently formatted and printed
        ###################################################################

        def displayTemperature()
            print '%.5f' % @myDegree + " " + @myScale + "\t"
        end

        ###################################################################
        # equals() allows two Temperatures to be compared (equality)
        # Receive: temp : Temperature - the rhs of the == operation
        # Return: a boolean indicating if this and temp have the 
        #       same temperature (regardless of scale)
        ###################################################################

        def equals(temp)
            return self.toFahrenheit().myDegree == temp.toFahrenheit.myDegree
        end

        ###################################################################
        # lessThan() allows two Temperatures to be compared (less than)
        # Receive: temp : Temperature - the rhs of the < operation
        # Return: a boolean indicating if this < temp (regardless of scale)
        ###################################################################

        def lessThan(temp)
            return self.toFahrenheit().myDegree < temp.toFahrenheit.myDegree
        end

    end #class Temperature
end #module TemperatureModule
