const N1: array [1..4] of integer= (8,4,5,45);
const N2: array [1..4] of integer= (5,4,7,55);
const N3: array [1..4] of integer= (7,5,3,32);
var Ntop: array [1..3] of integer;
var at, am, af, maxp: integer; 

Begin
    Ntop[1]:=0; Ntop[2]:=0; Ntop[3]:=0;
    at:=18; am:=12; af:=34;
    maxp:=0;
    for i:integer:=0 to 2 do
       for j:integer:=0 to 3 do 
           for k:integer:=0 to 2 do
             If ((N1[1]*i+N2[1]*j+N3[1]*k<=at) and (N1[2]*i+N2[2]*j+N3[2]*k<=am) and (N1[3]*i+N2[3]*j+N3[3]*k<=af)) then
                 if ((N1[4]*i+N2[4]*j+N3[4]*k)>maxp) then 
                       begin
                         maxp:=(N1[4]*i+N2[4]*j+N3[4]*k);
                         Ntop[1]:=i; Ntop[2]:=j; Ntop[3]:=k;
                       end;
    Writeln(maxp, ', ', Ntop[1], ', ', Ntop[2], ', ', Ntop[3]);
end.