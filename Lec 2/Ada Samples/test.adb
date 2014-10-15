with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;
with Ada.Float_Text_IO;
use Ada.Float_Text_IO;
 procedure Think is
    type Date is
  record
   Day   : Integer range 1 .. 31;
   Month : Integer range 1 .. 12;
   Year  : Integer range 1 .. 4000 := 1995;
  end record;
  Ada_Birthday : Date;
 begin
 	Ada_Birthday.Month := 12;
   Ada_Birthday.Day   := 10;
   Put(Ada_Birthday.Year);
 end Think;