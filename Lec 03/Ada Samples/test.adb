with text_io;
use text_io;


procedure test is
package int_io is new integer_io(integer);
use int_io;
squares: array (1 .. 5) of integer;

task  A is 
	entry main;
	entry fromB;
end A;

task B is
	entry fromA;
	end B;

task body B is 

begin

	accept fromA do
	put("in B");
	end;

	A.fromB;
end B;




task body A  is

begin
	accept main do

		for i in 1 .. 5 loop
                put(squares(i));
            end loop;
	end;

	B.fromA;
	accept fromB do
		put(" back form B ");
		for i in 1 .. 5 loop
                put(squares(i));
            end loop;

	end;

end A;		

begin

for i in 1 .. 5 loop
                 get(squares(i));
            end loop;

A.main;



end test;