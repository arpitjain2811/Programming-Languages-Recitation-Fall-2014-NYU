with text_io; -- always need these two lines for reading and printing
use text_io;

procedure hello is

   task Foo;

   task body Foo is
   begin
      Put("In foo");
      New_Line;
   end Foo;

begin
  Put("Hello Tasks); New_Line;
end Hello;
