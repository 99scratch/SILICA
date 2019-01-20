unit libcheck;
{
argv[1]:StdInput
argv[2]:StdOutput
argv[3]:UsrOutput
argv[4]:FullScore
}

interface
var
    //standard input file for this testcase
    StdInput:Text;
    //standard output file for this testcase
    StdOutput:Text;
    //competitor's output file for this testcase
    UsrOutput:Text;
    //full score for this testcase
    FullScore:Double;

    //give score
    procedure Score(AScore:Double);
    //finish the judging task
    procedure Finish();
    //prepare for the judging task
    procedure Prepare();

implementation

procedure Score(AScore:Double);
var
  f:Text;
begin
  Assign(f,'score.txt');
  Rewrite(f);
  WriteLN(f,AScore:0:4);
  Close(f);
end;

procedure Prepare();
begin
  Assign(StdInput,ParamStr(1));
  Reset(StdInput);

  Assign(StdOutput,ParamStr(2));
  Reset(StdOutput);

  Assign(UsrOutput,ParamStr(3));
  Reset(UsrOutput);

  Val(ParamStr(4),FullScore);
end;

procedure Finish();
begin
  Close(StdInput);
  Close(StdOutput);
  Close(UsrOutput);
end;

end.
