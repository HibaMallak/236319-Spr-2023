program question3;

function funP(a: integer; b: integer; c:integer): boolean;
begin
 c:= c*c;
 funP:= c=((a*a)+(b*b))
end;
function funC(c: char; d: integer) : char;
begin

 d:= d+ord(c);
 funC:= chr(d)
end;
function funG(magen: integer; exam:integer):integer;
begin
  if exam <55 then
    begin 
    funG:= exam
    end
    else

    funG:= Round((0.2*magen)+(0.80*exam))

end;

var arr: array[1..5] of char;
var argsP: array[1..3]of integer;
var argsCchar: char;
var argsCinteger: integer;
var argsG: array[1..2] of integer;
var arrbool : array[1..5] of boolean;
var arrchar: array[1..5] of char;
var arrmain: array[1..5] of integer;
var i: integer;
begin
ReadLn(arr[1]);
ReadLn(arr[2]);
ReadLn(arr[3]);
ReadLn(arr[4]);
ReadLn(arr[5]);
for i:=1 to 5 do
begin
arrmain[i]:=-1;
end;
for i:=1 to 5 do
begin
case arr[i] of
     'P':
     begin
     ReadLn(argsP[1]);
     ReadLn(argsP[2]);
     ReadLn(argsP[3]);
     arrbool[i]:=funP(argsP[1],argsP[2],argsP[3]);
      arrmain[i]:=-3;
     end;
     'C':
     begin
     ReadLn(argsCchar);
     ReadLn(argsCinteger);
      arrchar[i]:=funC(argsCchar,argsCinteger);
      arrmain[i]:=-2;
      end;
     'G': 
     begin
     ReadLn(argsG[1]);
     ReadLn(argsG[2]);
     arrmain[i]:=funG(argsG[1],argsG[2])
     end
     end
end;
for i:=5 downto 1 do
begin
  if arrmain[i]=-2 then
  writeLn(arrchar[i]);
  if arrmain[i]=-3 then
 writeLn(arrbool[i]);
 if arrmain[i]> -1 then
 writeLn(arrmain[i]);
end
end.