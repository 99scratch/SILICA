#ifndef LIBCHECK_H_INCLUDED
#define LIBCHECK_H_INCLUDED

#include <stdio.h>
#include <stdlib.h>


FILE *StdOutput, *StdInput, *UsrOutput;
double FullScore;

void Score(double score)
{
    FILE *f=fopen("score.txt","w");
    fprintf(f,"%.4lf\n", score);
    fclose(f);
}

void Prepare(char *argv[])
{
    StdInput = fopen(argv[1],"r");
    StdOutput = fopen(argv[2],"r");
    UsrOutput = fopen(argv[3],"r");
    FullScore = atof(argv[4]);
}

void Finish()
{
    fclose(StdOutput);
    fclose(UsrOutput);
    fclose(StdInput);
}


#endif // LIBCHECK_H_INCLUDED
