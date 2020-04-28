-- birds.adb tests our Birds type hierarchy.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College
-- Completed by: Duncan Van Keulen
-- Date: 4/27/2020
-----------------------------------------------------

with Bird_Package,
        Flying_Bird,
        Walking_Bird,
        Duck_Package,
        Goose_Package, 
        Owl_Package,
        Penguin_Package,
        Ostrich_Package,
        Kiwi_Package,
    Ada.Text_IO;
use Bird_Package,
        Flying_Bird,
        Walking_Bird,
        Duck_Package, 
        Goose_Package,
        Owl_Package,
        Penguin_Package,
        Ostrich_Package,
        Kiwi_Package,
    Ada.Text_IO;


procedure Birds is

Bird2 : Duck_Type;       -- derived class 1
Bird3 : Goose_Type;      -- derived class 2
Bird4 : Owl_Type;        -- derived class 3
Bird5 : Flying_Bird_Type;
Bird6 : Walking_Bird_Type;
Bird7 : Penguin_Type;
Bird8 : Ostrich_Type;
Bird9 : Kiwi_Type;

begin
New_Line;
Put("Welcome to the Bird Park!");
New_Line;

Init(Bird5, "Flyer ");
Put(Bird5); New_Line;

Init(Bird6, "Walker");
Put(Bird6); New_Line;

Init(Bird2, "Donald");
Put(Bird2); New_Line;

Init(Bird3, "Mother");
Put(Bird3); New_Line;

Init(Bird4, "Woodsy");
Put(Bird4); New_Line;

Init(Bird7, "Peter ");
Put(Bird7); New_Line;

Init(Bird8, "Oliver");
Put(Bird8); New_Line;

Init(Bird9, "Kathy ");
Put(Bird9); New_Line;

New_Line;
end Birds;

