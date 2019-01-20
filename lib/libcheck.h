#ifndef LIBCHECK_H_INCLUDED
#define LIBCHECK_H_INCLUDED

#include <stdio.h>
#include <stdlib.h>

/*==== interface ====*/
/*standard input file for this testcase*/
FILE *StdOutput;
/*standard output file for this testcase*/
FILE *StdInput;
/*competitor's output file for this testcase*/
FILE **UsrOutput;
/*full score for this testcase */
double FullScore;

/*give score*/
void Score(double score);
/*finish the judging task*/
void Prepare(char *argv[]);
/*prepare for the judging task*/
void Finish();

/*==== implementation ====*/
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


#endif /* LIBCHECK_H_INCLUDED */
