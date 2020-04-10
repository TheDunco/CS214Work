/* Tempearture.java provides the Temperature class
* Student: Duncan Van Keulen
* Date: 4/9/2020
*************************************************/

public class Temperature {
    private Double myDegrees;
    private char myScale;

    /*
    Temperature constructor
    In: double degrees: the value of the degrees to be used
    In: char scale: the temperature scale to use
    Precondition: Scale must be one of C, K, F/c, k, f
    Precondition: Degrees must not be below absolute zero in the respective scale
    Postcondition: Temperature object will be made and instance variables
                    will be initialized
    */
    public Temperature(final double degrees, final char scale) {
        if(isValidTemperature(degrees, scale)) {
            myScale = scale;
            myDegrees = degrees;
        }
    }

    /*
    Empty temperature constructor for use with filling values in later
    */
    public Temperature() {
        myScale = 'C';
        myDegrees = 0.0;
    };

    /* 
    Checker to make sure a temperature is going to be valid
    In: double degree: the degree of the perspective Temperature
    In: char scale: the temperature scale of the perspective Temperature
    Return: Boolean indicating whether or not the temperature is valid. 
    */
    public boolean isValidTemperature(double degree, char scale) {
        // Make sure the temperature scale is one of these
        switch(scale) {
            case 'F':
            case 'f':
                if(degree >= -460.0) {
                    return true;
                }
            case 'K':
            case 'k':
                if (degree >= 0.0) {
                    return true;
                }
            case 'C':
            case 'c':
                if (degree >= -273.15) {
                    return true;
                }
            default:
                return false;
        }
    }

    // Accessor for myScale
    public char getScale() {
        return myScale;
    }

    // Accessor of myDegrees
    public double getDegrees() {
        return myDegrees;
    }

    /* 
    Upwards adjustment for degrees
    In: Temperature temp: the temperature object of which to raise the degrees by
    In: double degrees: the amount of degrees to raise the temperature by in it's scale
    Precondition: temp must be a valid temperature.
    Returns: A new temperature object with the myDegree incremented by degrees
    */
    public Temperature raise(Temperature temp, double degrees) {
        double newDeg = temp.getDegrees();
        newDeg += degrees;
        if(isValidTemperature(newDeg, temp.getScale())){
            return new Temperature(newDeg, temp.getScale());
        }
        else {
            System.out.println("Couldn't raise temperature");
            return temp;
        }
    }

    /* 
    Downwards adjustment for degrees
    In: Temperature temp: the temperature object of which to lower the degrees by
    In: double degrees: the amount of degrees to lower the temperature by in it's scale
    Precondition: temp must be a valid temperature.
    Returns: A new temperature object with the myDegree decremented by degrees
    */
    public Temperature lower(Temperature temp, double degrees) {

        double newDeg = temp.getDegrees();
        newDeg -= degrees;

        if(isValidTemperature(newDeg, temp.getScale())){
            return new Temperature(newDeg, temp.getScale());
        }
        else {
            System.out.println("Couldn't raise temperature");
            return temp;
        }
    }

    /* 
    Fahrenheit conversion
    Converty any temperature scale into Fahrenheit. 
    Returns: A new Temperature object with the myScale
            changed to the correct scale and myDegree
            updated to the correct value for that scale
    */
    public Temperature toFahrenheit() {
        switch(myScale) {
            case 'F':
            case 'f':
                return this;
            case 'C':
            case 'c':
                return new Temperature( ((myDegrees * (9.0/5.0)) + 32.0), 'F');
            case 'K':
            case 'k':
                return new Temperature( (((myDegrees - 273.15) * (9.0/5.0)) + 32.0), 'F' );
            default:
                // Invalid temperature scale
                System.out.println("Could not convert to F");
                return this;
        }
    }

    /* 
    Celsius conversion
    Converty any temperature scale into Celsius. 
    Returns: A new Temperature object with the myScale
            changed to the correct scale and myDegree
            updated to the correct value for that scale
    */
    public Temperature toCelsius() {
        switch(myScale) {
            case 'F':
            case 'f':
                return new Temperature( (myDegrees - 32.0) * (5.0/9.0), 'C');
            case 'C':
            case 'c':
                return this;
            case 'K':
            case 'k':
                return new Temperature((myDegrees - 273.15), 'C');
            default:
                // Invalid temperature scale
                System.out.println("Could not convert to C");
                return this;
        }
    }

    /* 
    Kelvin conversion
    Converty any temperature scale into Kelvin. 
    Returns: A new Temperature object with the myScale
            changed to the correct scale and myDegree
            updated to the correct value for that scale
    */
    public Temperature toKelvin() {
        switch(myScale) {
            case 'F':
            case 'f':
                return new Temperature( (((myDegrees - 32.0)) * (5.0/9.0) + 273.15), 'K');
            case 'C':
            case 'c':
                return new Temperature( (myDegrees + 273.15), 'K');
            case 'K':
            case 'k':
                return this;
            default:
                // Invalid temperature scale
                System.out.println("Could not convert to K");
                return this;
        }
    }

    /*
    Ability to set the values of myDegree and myScale with a string input
    In: String input: the string containing the desired temperature and scale
    Precondition: input must be in the format <valid numbers> <valid scale>
                and must be valid for a Temperature object
    Postcondition: The values of myDegree and myScale will be updated with the input values
    */
    public void enterTemperature(String input) {
        // Strip away nasty white space
        char[] inputCharArray = input.toCharArray();

        // Set the scale to the last character entered
        char scale = inputCharArray[input.length() - 1];

        // Set the degrees to everthing before that (in hopes that it's a valid double)
        double degrees = Double.parseDouble( input.substring(0, input.length() - 1) );

        // Make sure the parsed values would make a valid temperature and set 
        //      myDegree and myScale
        if(isValidTemperature(degrees, scale)) {
            myDegrees = degrees;
            myScale = scale;
        }
        else {
            System.out.println("Invalid temperature");
        }
    }

    /*
    Convert a temperature object to a string to be displayed (in a table)
    Returns: A string containing the value of myDegrees rounded to 2 decimal places
            followed by the letter corresponding to the scale
    */
    public String toString() {
        return String.format(("%.2f " + String.valueOf(myScale)), myDegrees);
    }

    /*
    For testing if two Temperature objects have equal temperature (regardless of scale)
    In: Temperature temp: The Temperature object to compare to this.
    Precondition: Both temp and this must be valid temperature objects.
    Returns: a boolean indicating whether or not the two temperatures are equal.
    */
    public boolean equals(Temperature temp) {
        switch(myScale) {
            case 'F':
            case 'f':
                if(temp.toFahrenheit().getDegrees() == myDegrees) {
                    return true;
                }
                else {
                    return false;
                }
            case 'K':
            case 'k':
                if(temp.toKelvin().getDegrees() == myDegrees) {
                    return true;
                }
                else {
                    return false;
                }
            case 'C':
            case 'c':
                if(temp.toCelsius().getDegrees() == myDegrees) {
                    return true;
                }
                else {
                    return false;
                }
            default:
                return false;
        }
    }

    /*
    For testing if this Temperature object's degree is less than another
    In: Temperature temp: The Temperature object to compare to this.
    Precondition: Both temp and this must be valid temperature objects.
    Returns: a boolean indicating whether or not temp's degree is less than this's degree.
    */
    public boolean lessThan(Temperature temp) {
        switch(myScale) {
            case 'F':
            case 'f':
                if(temp.toFahrenheit().getDegrees() > myDegrees) {
                    return true;
                }
                else {
                    return false;
                }
            case 'K':
            case 'k':
                if(temp.toKelvin().getDegrees() > myDegrees) {
                    return true;
                }
                else {
                    return false;
                }
            case 'C':
            case 'c':
                if(temp.toCelsius().getDegrees() > myDegrees) {
                    return true;
                }
                else {
                    return false;
                }
            default:
                return false;
        }
    }
}
