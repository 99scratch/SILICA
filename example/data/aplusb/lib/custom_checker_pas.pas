program custom_checker;
uses
  libcheck;
var
  i,j,k,l:Longint;
begin
  Prepare();

  read(StdInput,i,j);
  read(StdOutput,k);
  read(UsrOutput,l);

  if (k=l) then
    Score(FullScore)
  else
    Score(0);

  Finish();
end.