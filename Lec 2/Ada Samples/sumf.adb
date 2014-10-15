with text_io;
use text_io;

procedure sumf is

package int_io is new integer_io(integer);
use int_io;

C : Integer := 4;
D : Integer := 5;

function Sum(A, B : in out Integer) return Integer is

Total : Integer := A;
begin
Total := Total + B;
A:=A+10;
B:=B+1;	
return Total ; 
end Sum;

begin
put(Sum(C,D));
put(C);
put(D);

end sumf;