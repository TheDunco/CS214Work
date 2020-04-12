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
    -- 
    -- Receive: 
    -- PRE:
    -- Return: 
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
    -- 
    -- Receive: 
    -- PRE:
    -- Return: 
    ----------------------------------------------

    function isValidTemperature(Degree : in Float; Scale : in character) return boolean is
    begin
        case(Scale) is
            when 'F' | 'f' => if Degree >= -460.0 then return true; else return false; end if;
            when 'C' | 'c' => if Degree >= -273.15 then return true; else return false; end if;
            when 'K' | 'k' => if Degree >= 0.0 then return true; else return false; end if;
            when others => return false;
        end case;

        return false;

    end isValidTemperature;

    ----------------------------------------------
    -- 
    -- Receive: 
    -- PRE:
    -- Return: 
    ----------------------------------------------
    
    function getScale(Tmp : in Temperature) return character is
    begin
        return Tmp.myScale;
    end getScale;

    ----------------------------------------------
    -- 
    -- Receive: 
    -- PRE:
    -- Return: 
    ----------------------------------------------
    
    function getDegree(Tmp : in Temperature) return Float is
    begin
        return Tmp.myDegree;
    end getDegree;

    ----------------------------------------------
    -- 
    -- Receive: 
    -- PRE:
    -- Return: 
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
    -- 
    -- Receive: 
    -- PRE:
    -- Return: 
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
    -- 
    -- Receive: 
    -- PRE:
    -- Return: 
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
    -- 
    -- Receive: 
    -- PRE:
    -- Return: 
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
    -- 
    -- Receive: 
    -- PRE:
    -- Return: 
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
    -- 
    -- Receive: 
    -- PRE:
    -- Return: 
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
    -- 
    -- Receive: 
    -- PRE:
    -- Return: 
    ----------------------------------------------
    
    procedure display(Tmp : in Temperature) is
    begin
        Put(getDegree(Tmp), 10, 5, 0);
        Put(" ");
        Put(getScale(Tmp));
    end display;

    ----------------------------------------------
    -- 
    -- Receive: 
    -- PRE:
    -- Return: 
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
    -- 
    -- Receive: 
    -- PRE:
    -- Return: 
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