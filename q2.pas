program passwordCheck;
type letter= 'a' .. 'z';
var hist: array ['a' .. 'z'] of integer;
var status : boolean;
var i: char;
var j: integer;
var oldpas :string;
var newpas: string;
begin
ReadLn(oldpas);
ReadLn(newpas);
status := true;
for i:= 'a' to 'z' do
begin
hist[i]:=0;
end;

for j:=1 to  Length(oldpas) do
begin
hist[oldpas[j]]:=hist[oldpas[j]]+1;
end;

for j:=1 to  Length(newpas) do
begin
if hist[newpas[j]] >0 then
begin
status:=false;
end;
hist[newpas[j]]:=hist[newpas[j]] +1 ;
end;
 
 writeLn(status);
for i:='a' to 'z' do
begin
if hist[i]>0 then
begin
 writeLn(i, ' ', hist[i]);
end;
end;
end.