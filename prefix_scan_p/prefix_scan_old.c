#include "memoryweb.h"
#include "cilk.h"
#include "timing.h"
#include "stdio.h"

#define N 32
#define lgn 5
int main()
{
	long *A = mw_malloc1dlong(N);
	long *B = mw_malloc1dlong(N);

	for(long i=0;i<N;i++)
	{
		A[i]= 2*i + 1;
		B[i] = A[i];
	}
	long sum=0;
	cilk_for(long i=0;i<N;i++)
	{
		sum = sum + A[i];
		A[i]=sum;
	}
	printf("Original array: \n");
	for(long i=0;i<N;i++)
	{
		printf("%ld ", B[i]);
	}
	printf("\n");
	printf("Prefix scan: \n");
	 for(long i=0;i<N;i++)
	{
		printf("%ld ", A[i]);
	}
	printf("\n");

	return 0;
}
