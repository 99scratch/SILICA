unit libaplusb;

interface

function GetValue:Longint;
procedure SubmitAnswer(c:Longint);

implementation
var
  fin,fout:Text;

function GetValue:Longint;
var
  i:Longint;
begin
  read(fin,i);
  exit(i);
end;

procedure SubmitAnswer(c:Longint);
begin
  writeln(fout,c);
end;

initialization
begin
  Assign(fin,'a.in');
  Reset(fin);
  Assign(fout,'a.out');
  Rewrite(fout);
end;
finalization
begin
  Close(fin);
  Close(fout);
end;
end.
