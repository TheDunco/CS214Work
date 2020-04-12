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

    baseTemp, limitTemp, stepTemp : Temperature_Package.Temperature;
--    baseString, limitString : String := "100 C";
    stepValue : Float;

begin

    -- Input the temperatures
    Put("[Base] Enter degrees and scale: ");
    enterTemperature(baseTemp);
    New_Line;

    Put("[Limit] Enter degrees and scale: ");
    enterTemperature(limitTemp);
    New_Line;
    
    Put("[Step] Enter the step value: ");
    Get(stepValue);
    New_Line;

    -- Initialize the stepper temp to the base temp
    Init(stepTemp, getDegree(baseTemp), getScale(baseTemp));

    -- Header
    Put("         ");
    Put("Fahrenheit");
    Put("         ");
    Put("Celsius");
    Put("         ");
    Put("Kelvin");
    Put("         ");
    New_Line;

    while(lessThan(stepTemp, limitTemp))
    loop

        display(toFahrenheit(stepTemp));
        display(toCelsius(stepTemp));
        display(toKelvin(stepTemp));
        New_Line;
    
        raiseTemperature(stepTemp, stepValue, stepTemp);

    end loop;


end temperature_table;
