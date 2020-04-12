-- name_package.adb defines operations for the Name type.
--
-- Completed by: Duncan Van Keulen
-- Date: 4/9/2020
---------------------------------------------------------

with Temperature_Package;
use Temperature_Package;

procedure temperature_table is

    aTemp : Temperature_Package.Temperature;

begin
    Init(aTemp, 0.0, 'C');

end temperature_table;
