#include "memoryweb.h"
#include "cilk.h"
#include "timing.h"
#include "stdio.h"

#define N 1024
#define lgn 10
int main()
{
	long *A = mw_malloc1dlong(N);
	long *B = mw_malloc1dlong(N);

	for(long i=0;i<N;i++)
	{
		A[i]= 2*i + 1;
		B[i] = A[i];
	}
	//long sum=0;
	/*
	cilk_for(long i=0;i<N;i++)
	{
		sum = sum + A[i];
		A[i]=sum;
	}
	*/
	//Down sweep
	//
	long x,y,reduce_value;
	starttiming();
	for(long i=0;i<lgn;i++)
	{
		x = 1<<(i+1);
		y = 1<<i;
		cilk_for(long j=0;j<N;j=j+x)
		{
			A[j + x - 1 ] =  A[j + x - 1 ] +  A[j + y - 1 ];
		}
	}
	reduce_value = A[N-1];
	//Upsweep
	
	A[N-1] = 0;
	long t=0;
	for(long d = lgn -1; d >=0 ;d--)
	{
		x = 1<<(d+1);
		y= 1<<d;
		cilk_for(long i=0;i<N;i=i+x)
		{
			t= A[i + y -1];
			A[i + y - 1] = A[ i + x -1];
			A[i + x - 1 ]= t + A[i + x - 1];
		}
	}

	for(long i=0;i<N;i++)
	{
		if(i!=N-1)
		{
			A[i] = A[i+1];
		}
		else
			A[i]=reduce_value;
	}
	/*
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
	*/
	return 0;
}
