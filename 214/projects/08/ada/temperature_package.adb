-- temperature.adb defines operations for the Temperature type.
--
-- By: Duncan Van Keulen
-- Date: 4/9/2020
---------------------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package body Temperature_Package is

    procedure Init(Tmp : out Temperature; Degree : in Float; Scale : in character) is
    begin
        if isValidTemperature(Degree, Scale) then
            Tmp.MyDegree := Degree;
            Tmp.MyScale := Scale;
        else
            Put("Invalid temperature values");
        end if;
    end Init;

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

    function getScale(Tmp : in Temperature) return character is
    begin
        return Tmp.myScale;
    end getScale;

    function getDegree(Tmp : in Temperature) return Float is
    begin
        return Tmp.myDegree;
    end getDegree;

    function raiseTemperature(temp : in Temperature; degrees : in Float) return Temperature is
        newDeg : Float := getDegree(temp);
        newTemp : Temperature;
    begin
        newDeg := newDeg + degrees;
        if isValidTemperature(newDeg, getScale(temp)) then 
            Init(newTemp, newDeg, getScale(temp)); 
            return newTemp;
        else
            Put("Couldn't raise temperature");
            return temp;
        end if;
    end raiseTemperature;

    function lowerTemperature(temp : in Temperature; degrees : in Float) return Temperature is
        newDeg : Float := getDegree(temp);
        newTemp : Temperature;
    begin
        newDeg := newDeg - degrees;
        if isValidTemperature(newDeg, getScale(temp)) then 
            Init(newTemp, newDeg, getScale(temp)); 
            return newTemp;
        else
            Put("Couldn't lower temperature");
            return temp;
        end if;
    end lowerTemperature;

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

    function enterTemperature(Tmp : in Temperature; input : in String) return Temperature is
        newDeg : Float;
        newScale : character := input(input'Last);
        updatedTemp : Temperature;
        numRange : Integer := (input'Last) - 2;
    begin
        newDeg := Float'Value(input(input'First..numRange));
        if isValidTemperature(newDeg, newScale) then
            Init(updatedTemp, newDeg, newScale);
            return updatedTemp;
        else 
            Put("Invalid values provided");
        end if;
    end enterTemperature;

    function toString(Tmp : in Temperature) return String is
    begin
        return getDegree(Tmp) & " " & getScale(Tmp);
    end toString;

    function equals(temp1 : in Temperature; temp2 : in Temperature) return boolean is
    begin
        case(getScale(temp1)) is
            when 'F' | 'f' => 
            if getDegree(toFahrenheit(temp1)) = getDegree(temp2) then
                return true;
            else
                return false;
            end if;

            when 'K' | 'k' => 
            if getDegree(toKelvin(temp1)) = getDegree(temp2) then
                return true;
            else
                return false;
            end if;

            when 'C' | 'c' => 
            if getDegree(toCelsius(temp1)) = getDegree(temp2) then
                return true;
            else
                return false;
            end if;
            when others => return false;
        end case;
        -- to stop it complaining about missing return
        return false;
    end equals;

    function lessThan(temp1 : in Temperature; temp2 : in Temperature) return boolean is
    begin
        case(getScale(temp1)) is
            when 'F' | 'f' => 
            if getDegree(toFahrenheit(temp1)) < getDegree(toFahrenheit(temp2)) then
                return true;
            end if;

            when 'K' | 'k' => 
            if getDegree(toKelvin(temp1)) < getDegree(toKelvin(temp2)) then
                return true;
            end if;

            when 'C' | 'c' => 
            if getDegree(toCelsius(temp1)) < getDegree(toCelsius(temp2)) then
                return true;
            end if;
            when others => return false;
        end case;
    end lessThan;

end Temperature_Package;