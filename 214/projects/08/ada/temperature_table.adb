-- name_package.adb defines operations for the Name type.
--
-- Completed by: Duncan Van Keulen
-- Date: 4/9/2020
---------------------------------------------------------

with Temperature_Package; use Temperature_Package;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure temperature_table is

    baseTemp, limitTemp : Temperature_Package.Temperature;
--    baseString, limitString : String := "100 C";
    stepValue : Float;
    iterValue : Float := 0.0;

begin

--    Put("[Base] Enter degrees then scale: ");
--    Get(baseString);
--    New_Line;
--
--    Put("[Limit] Enter degrees then scale: ");
--    Get(limitString);
--    New_Line;
--    
--    Put("[Step] Enter the step value: ");
--    Get(stepValue);
--    New_Line;

    enterTemperature(baseTemp, "0 F");
    enterTemperature(limitTemp, "100 C");
    stepValue := 2.5;

    Put("Fahrenheit     Celsius     Kelvin");
    while(lessThan(baseTemp, limitTemp))
    loop

        display(toFahrenheit(raiseTemperature(baseTemp, iterValue)));
        Put("    ");
        display(toCelsius(raiseTemperature(baseTemp, iterValue)));
        Put("    ");
        display(toCelsius(raiseTemperature(baseTemp, iterValue)));
        New_Line;
    
        iterValue := iterValue + stepValue;

    end loop;


end temperature_table;
