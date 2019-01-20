#include "libcheck.h"
#include <stdio.h>
int main(int argc, char *argv[])
{
	int a,b;
	Prepare(argv);
	fscanf(StdOutput,"%d",&a);
	fscanf(UsrOutput,"%d",&b);
	Score((a==b)?FullScore:0);
	Finish();
	return 0;
}
