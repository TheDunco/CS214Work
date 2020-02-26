-- average.adb converts average scores to corresponding letter grades.
--
-- Duncan Van Keulen for Proj 03 on 2-20-2020
--
-- Input: average, an integer
-- Precondition: average is an integer
-- Output: The letter grade (A, B, C, D, F) corresponding to average.
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure average is
    grade : Integer;

function grade_average(avg : in integer) return String is
begin
    case (avg / 10) is
    when 10 | 9 => return "A";
    when 8 => return "B";
    when 7 => return "C";
    when 6 => return "D";
    when others => return "F";
    end case;
end grade_average;

begin
    Put("Enter your average: ");
    Get(grade);
    Put( grade_average(grade) );
    New_Line;
end average;