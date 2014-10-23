with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;


procedure copyreturn is

global:  Integer:=10;
another: Integer:=2;

procedure Double(first :  in out Integer;second: in out Integer) is
 begin
first:= first+global;
second:= first*global;
end Double;

begin -- procedure Compute
Double(global,another);
put(global);
put(another);
end copyreturn;