with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;


procedure byreference is

global: aliased Integer:=10;
another: Integer:=2;

procedure Double(first : aliased in out Integer;second: in out Integer) is
 begin
first:= first+global;
second:= first*global;
end Double;

begin -- procedure Compute
Double(global,another);
put(global);
put(another);
end byreference;