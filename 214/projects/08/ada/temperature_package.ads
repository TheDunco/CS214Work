-- temperature.ads declares the Temperature type and its operations.
--
-- By: Duncan Van Keulen
-- Date: 4/9/2020
--------------------------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

package Temperature_Package is

type Temperature is private;

procedure Init(Tmp : out Temperature; Degree : in Float; Scale : in character);

function isValidTemperature(Degree : in Float; Scale : in character) return boolean;

function getScale(Tmp : in Temperature) return character;

function getDegree(Tmp : in Temperature) return Float;

function raiseTemperature(temp : in Temperature; degrees : in Float) return Temperature;

function lowerTemperature(temp : in Temperature; degrees : in Float) return Temperature;

function toFahrenheit(Tmp : in Temperature) return Temperature;

function toCelsius(Tmp : in Temperature) return Temperature;

function toKelvin(Tmp : in Temperature) return Temperature;

function enterTemperature(Tmp : in out Temperature; input : in String) return Temperature;

function toString(Tmp : in Temperature) return String;

function equals(temp1 : in Temperature; temp2 : in Temperature) return boolean;

function lessThan(temp1 : in Temperature; temp2 : in Temperature) return boolean;

private

type Temperature is
    record
        myDegree : Float;
        myScale : character;
    end record;

end Temperature_Package;

