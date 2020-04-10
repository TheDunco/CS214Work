-- temperature.adb defines operations for the Temperature type.
--
-- By: Duncan Van Keulen
-- Date: 4/9/2020
---------------------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

package body Temperature is

type Temperature is private;

procedure Init(Tmp : out Temperature; Degree : in Float; Scale : in character) is
begin
    Tmp.MyDegree := Degree;
    Tmp.MyScale := Scale;
end Init;

function isValidTemperature(Degree : in Float; Scale : in character) return boolean is
begin
    case(Scale)
        when 'F' | 'f' => if Degree >= -460.0 then return true; end if;
        when 'C' | 'c' => if Degree >= -273.15 then return true; end if;
        when 'K' | 'k' => if Degree >= 0.0 then return true; end if;
        when others => return false;
    end case;

end isValidTemperature;

function getScale(Tmp : in Temperature) return character is
begin
    return Tmp.Scale;
end getScale;

function getDegree(Tmp : in Temperature) return Float is
begin
    return Tmp.Degree;
end getDegrees;

function raiseTemperature(temp : in Temperature; degrees : in Float) return Temperature is
newDeg : Float := getDegree(temp);
begin
    newDeg := newDeg + degrees;
    if isValidTemperature(newDeg, getScale(tmp) then 
        return Temperature(newDeg, getScale(tmp)); 
    else
        Put("Couldn't raise temperature");
        return temp;
    end if;
end raiseTemperature;

function lowerTemperature(temp : in Temperature; degrees : in Float) return Temperature is
begin
    newDeg := newDeg - degrees;
    if isValidTemperature(newDeg, getScale(tmp) then 
        return Temperature(newDeg, getScale(tmp)); 
    else
        Put("Couldn't raise temperature");
        return temp;
    end if;
end lowerTemperature;

function toFahrenheit(Tmp : in Temperature) return Temperature is
begin
    case(Scale)
        when 'F' | 'f' => return Tmp;
        when 'C' | 'c' => return Temperature( ((myDegrees * (9.0/5.0) + 32.0), 'F'));
        when 'K' | 'k' => return Temperature( (((Degree - 273.15) * (9.0/5.0)) + 32.0), 'F');
        when others => return Tmp;
        Put("Could not convert to F");
    end case;
end toFahrenheit;

function toCelsius(Tmp : in Temperature) return Temperature is
begin
    case(Scale)
        when 'F' | 'f' => return Temperature( (Degree -32.0) * (5.0/9.0), 'C' );
        when 'C' | 'c' => return Tmp
        when 'K' | 'k' => return Temperature( (Degree - 273.15), 'C' );
        when others => return Tmp;
        Put("Could not convert to C");
    end case;
end toCelsius;

function toKelvin(Tmp : in Temperature) return Temperature is
begin
    case(Scale)
        when 'F' | 'f' => return Temperature( (((Degree - 32.0)) * (5.0/9.0) + 273.15), 'K');
        when 'C' | 'c' => return Temperature( ((Degrees + 273.15, 'K'));
        when 'K' | 'k' => return Tmp;
        when others => return Tmp;
        Put("Could not convert to K");
    end case; 
end toKelvin;

function enterTemperature(degrees : in Float; scale : in character) return Temperature is
begin
end enterTemperature;

function toString(Tmp : in Temperature) return String is
begin
end toString;

function equals(temp : in Temperature) return boolean is
begin
end equals;

function lessThan(temp : in Temperature) return boolean is
begin
end lessThan;