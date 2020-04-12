-- temperature.adb defines operations for the Temperature type.
--
-- By: Duncan Van Keulen
-- Date: 4/9/2020
---------------------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package body Temperature_Package is

    ----------------------------------------------
    -- Init initializes a temperature record
    -- Receive: Scale : character - the scale of the temperature
    -- Recieve: Degree : Float - the degrees in that scale
    -- Post: Tmp's myDegree and myScale values will be initialized
    ----------------------------------------------
    procedure Init(Tmp : out Temperature; Degree : in Float; Scale : in character) is
    begin
        if isValidTemperature(Degree, Scale) then
            Tmp.MyDegree := Degree;
            Tmp.MyScale := Scale;
        else
            Put("Invalid temperature values");
        end if;
    end Init;

    ----------------------------------------------
    -- isValidTemperature determines if a Degree and Scale
    --      will constitute a valid temperature
    -- Receive: Degree : Float - the desired degree of the temperature
    -- Receive: Scale : character - the desired scale of the temperature
    -- Return: A boolean indicating whether the desired temperature is valid
    ----------------------------------------------

    function isValidTemperature(Degree : in Float; Scale : in character) return boolean is
    begin
        case(Scale) is
            -- If the scale is F
            when 'F' | 'f' =>   if Degree >= -460.0 then return true; 
                                else return false; end if;
            -- If the scale is C
            when 'C' | 'c' =>   if Degree >= -273.15 then return true; 
                                else return false; end if;
            -- If the scale is K
            when 'K' | 'k' =>   if Degree >= 0.0 then 
                                return true; else return false; end if;

            when others => return false;
        end case;

        return false;

    end isValidTemperature;

    ----------------------------------------------
    -- getScale is an accessor for a temperature's scale
    -- Receive: Tmp : Temperature - the temperature to retrive scale from
    -- PRE: Tmp must be initialized
    -- Return: a character - the scale of the temperature
    ----------------------------------------------
    
    function getScale(Tmp : in Temperature) return character is
    begin
        return Tmp.myScale;
    end getScale;

    ----------------------------------------------
    -- getDegree is an accessor for a temperature's degree
    -- Receive: Tmp : Temperature - the temperature to retrive degree from
    -- PRE: Tmp must be initialized
    -- Return: a Float - the degree of the temperature
    ----------------------------------------------
    
    function getDegree(Tmp : in Temperature) return Float is
    begin
        return Tmp.myDegree;
    end getDegree;

    ----------------------------------------------
    -- raiseTemperature raises a temperature by an amount in degrees
    -- Receive: temp : Temperature - the temperature to raise
    -- Recieve: temp2 : Temperature - the out temperature that will have the raised values
    -- Recieve: degrees : Float - the number of degrees to raise the temperature by
    -- PRE: both temperature objects must be initialized
    -- PRE: raising must constitute a valid temperature object
    -- POST: temp2 will have degree of temp1 + degrees
    ----------------------------------------------

    procedure raiseTemperature(temp : in Temperature; degrees : in Float; temp2 : out Temperature) is
    begin
        if isValidTemperature(getDegree(temp) + degrees, getScale(temp)) then 
            Init(temp2, getDegree(temp) + degrees, getScale(temp)); 
        else
            Put("Couldn't raise temperature");
            Init(temp2, getDegree(temp), getScale(temp));
        end if;
    end raiseTemperature;

    ----------------------------------------------
    -- lowerTemperature lowers a temperature by an amount in degrees
    -- Receive: temp : Temperature - the temperature to lower
    -- Recieve: temp2 : Temperature - the out temperature that will have the lowered values
    -- Recieve: degrees : Float - the number of degrees to lower the temperature by
    -- PRE: both temperature objects must be initialized
    -- PRE: raising must constitute a valid temperature object
    -- POST: temp2 will have degree of temp1 - degrees
    ----------------------------------------------
    
    procedure lowerTemperature(temp : in Temperature; degrees : in Float; temp2 : out Temperature) is
    begin
        if isValidTemperature(getDegree(temp) - degrees, getScale(temp)) then 
            Init(temp2, getDegree(temp) - degrees, getScale(temp)); 
        else
            Put("Couldn't raise temperature");
            Init(temp2, getDegree(temp), getScale(temp));
        end if;
    end lowerTemperature;

    ----------------------------------------------
    -- toFahrenheit converts a temperature to the Fahrenheit scale
    -- Receive: Tmp : Temperature
    -- PRE: Tmp must be initialized
    -- Return: A new Temperature with degree and scale changed to Fahrenheit
    ----------------------------------------------
    
    function toFahrenheit(Tmp : in Temperature) return Temperature is
    newTemp : Temperature;
    begin
        case(getScale(Tmp)) is
            when 'F' | 'f' => 
                return Tmp;
            when 'C' | 'c' => 
                Init(newTemp, ((getDegree(Tmp) * (9.0/5.0)) + 32.0), 'F');
                return newTemp;
            when 'K' | 'k' => 
                Init(newTemp, (((getDegree(Tmp) - 273.15) * (9.0/5.0)) + 32.0), 'F');
                return newTemp;
            when others =>
                return Tmp;
            Put("Could not convert to F");
        end case;
        -- to stop it complaining about missing return
        return Tmp;
    end toFahrenheit;

    ----------------------------------------------
    -- toCelsius converts a temperature to the Celsius scale
    -- Receive: Tmp : Temperature
    -- PRE: Tmp must be initialized
    -- Return: A new Temperature with degree and scale changed to Celsius
    ----------------------------------------------
    
    function toCelsius(Tmp : in Temperature) return Temperature is
    newTemp : Temperature;
    begin
        case(getScale(Tmp)) is
            when 'F' | 'f' => 
                Init(newTemp, (getDegree(Tmp) - 32.0) * (5.0/9.0), 'C' );
                return newTemp;
            when 'C' | 'c' => 
                return Tmp;
            when 'K' | 'k' =>
                Init(newTemp, (getDegree(Tmp) - 273.15), 'C' );
                return newTemp;
            when others => return Tmp;
            Put("Could not convert to C");
        end case;
        -- to stop it complaining about missing return
        return Tmp;
    end toCelsius;

    ----------------------------------------------
    -- toKelvin converts a temperature to the Kelvin scale
    -- Receive: Tmp : Temperature
    -- PRE: Tmp must be initialized
    -- Return: A new Temperature with degree and scale changed to Kelvin
    ----------------------------------------------
    
    function toKelvin(Tmp : in Temperature) return Temperature is
        newTemp : Temperature;
    begin
        case(getScale(Tmp)) is
            when 'F' | 'f' => 
                Init(newTemp, ((getDegree(Tmp) - 32.0) * (5.0/9.0) + 273.15), 'K');
                return newTemp;
            when 'C' | 'c' => 
                Init(newTemp, (getDegree(Tmp) + 273.15), 'K');
                return newTemp;
            when 'K' | 'k' => 
                return Tmp;
            when others => return Tmp;
            Put("Could not convert to K");
        end case; 
        -- to stop it complaining about missing return
        return Tmp;
    end toKelvin;

    ----------------------------------------------
    -- enterTemperature grabs values from the user and initializes 
    --      a new Temeprature object based on those values
    -- Receive: Tmp : temperature
    -- PRE: Temperature should be initialized
    -- PRE: Entered values must be in the format "#'s F|C|K"
    -- POST: Tmp will be initialized with the user entered temperature values
    ----------------------------------------------
    
    procedure enterTemperature(Tmp : in out Temperature) is
    SPACE : String := " ";
    degree : Float;
    scale : character;
    begin
        Get(degree);
        Get(SPACE);
        get(scale);
        if isValidTemperature(degree, scale) then
            Init(Tmp, degree, scale);
        else 
            Put("Invalid values provided");
        end if;
    end enterTemperature;

    ----------------------------------------------
    -- display allows a temeprature object to be displayed to the terminal
    -- Receive: Tmp : Temperature - the temperature object to display
    -- PRE: Tmp must be initialized
    -- POST: Tmps degree and scale will be Put to the terminal
    ----------------------------------------------
    
    procedure display(Tmp : in Temperature) is
    begin
        Put(getDegree(Tmp), 10, 5, 0);
        Put(" ");
        Put(getScale(Tmp));
    end display;

    ----------------------------------------------
    -- equals allows checking if two Temperatures are equal, regardless of scale
    -- Receive: temp1 : Temperature - the lhs temperature
    -- Recieve: temp2 : Temperature - the rhs temperature
    -- PRE: temp1 and temp2 must be initialized
    -- Return: a boolean indicating whether or not temp1 = temp2
    ----------------------------------------------
    
    function equals(temp1 : in Temperature; temp2 : in Temperature) return boolean is
    begin
        case(getScale(temp1)) is
            when 'F' | 'f' => 
            if getDegree(toFahrenheit(temp1)) = getDegree(toFahrenheit(temp2)) then
                return true;
            else
                return false;
            end if;

            when 'K' | 'k' => 
            if getDegree(toKelvin(temp1)) = getDegree(toKelvin(temp2)) then
                return true;
            else
                return false;
            end if;

            when 'C' | 'c' => 
            if getDegree(toCelsius(temp1)) = getDegree(toCelsius(temp2)) then
                return true;
            else
                return false;
            end if;
            when others => return false;
        end case;
        -- to stop it complaining about missing return
        return false;
    end equals;

    ----------------------------------------------
    -- lessThan allows checking if one Temperature is less than another, regardless of scale
    -- Receive: temp1 : Temperature - the lhs temperature
    -- Recieve: temp2 : Temperature - the rhs temperature
    -- PRE: temp1 and temp2 must be initialized
    -- Return: a boolean indicating whether or not temp1 = temp2
    ----------------------------------------------
    
    function lessThan(temp1 : in Temperature; temp2 : in Temperature) return boolean is
    begin
        case(getScale(temp1)) is
            when 'F' | 'f' => 
            if getDegree(toFahrenheit(temp1)) < getDegree(toFahrenheit(temp2)) then
                return true;
            else
                return false;
            end if;

            when 'K' | 'k' => 
            if getDegree(toKelvin(temp1)) < getDegree(toKelvin(temp2)) then
                return true;
            else
                return false;
            end if;

            when 'C' | 'c' => 
            if getDegree(toCelsius(temp1)) < getDegree(toCelsius(temp2)) then
                return true;
            else
                return false;
            end if;
            when others => return false;
        end case;
    end lessThan;

end Temperature_Package;