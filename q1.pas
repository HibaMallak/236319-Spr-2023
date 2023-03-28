program PascalTriangle;
{
    Here you may write helper functions and procedures.
    Please do.
}

var n: integer;
var line: array  [1..120] of integer;
var curr: integer;
var i : integer;
var j : integer;
{ Complete the array definition... }

begin
{ Initialize 'line' array }
curr:=1;
ReadLn(n);
for i := 1 to n do
    begin
        for j:=1 to i do
        begin
          if (j=1) or (j=i) then
          begin
          line[curr]:=1;
         end
         else
         begin
            line[curr]:= line[curr-i]+ line[curr-i+1];
          end;
         if j=i then
         begin
         writeLn(line[curr])
         end
         else
         begin
          write(line[curr]);
          write(' ');
          end;
         curr:=curr+1;
        end;
    end;
end.
