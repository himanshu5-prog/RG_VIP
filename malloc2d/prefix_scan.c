#include "memoryweb.h"
#include "cilk.h"
#include "timing.h"
#include "stdio.h"

#define N 1024
#define lgn 10
int main()
{
	//long *A = mw_malloc1dlong(N);
	//mw_replicated_init ( (long*)A, (long)mw_malloc1dlong(N) );
	//mw_replicated_init ( (long*)B, (long)mw_malloc1dlong(N) );
	//long *B = mw_malloc1dlong(N);
	long epn = N/NODELETS();
	//long *A = mw_mallocrepl(N);
	long **A = (long**) mw_malloc2d(NODELETS(),epn*sizeof(long));
	long **B = (long**) mw_malloc2d(NODELETS(),epn*sizeof(long));
//	long **C = (long**) mw_malloc2d(NODELETS(),epn*sizeof(long));
	//long *B = mw_mallocrepl(N);
	for(long i=0;i<N;i++)
	{
		A[i/epn][i%epn]= 2*i + 1;
		B[i/epn][i%epn] = A[i/epn][i%epn];
	//	C[i/epn][i%epn]= A[i/epn][i%epn];
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
		//cilk_for(long j=0;j<N;j=j+x)
		cilk_for(long j=0;j<N;j=j+x)
		{
			//A[j + x - 1 ] =  A[j + x - 1 ] +  A[j + y - 1 ];
			A[(j + x - 1)/epn ][(j + x - 1)%epn] =  A[ (j + x - 1)/epn ][((j + x - 1) )%epn  ] +  A[(j + y - 1)/epn ][(j + y - 1)%epn];
		}
	}
	reduce_value = A[(N-1)/epn][(N-1)%epn];
	//Upsweep
	
	A[(N-1)/epn][(N-1)%epn] = 0;
	long t=0;
	for(long d = lgn -1; d >=0 ;d--)
	{
		x = 1<<(d+1);
		y= 1<<d;
		//cilk_for(long i=0;i<N;i=i+x)
		cilk_for(long i=0;i<N;i=i+x)
		{
			t= A[(i + y -1)/epn][(i + y -1)%epn];

			A[(i + y - 1)/epn][(i + y - 1)%epn] = A[ (i + x -1)/epn][ (i + x -1)%epn];
		//	C[(i+y-1)/epn][(i+y-1)%epn] =  A[(i + y - 1)/epn][(i + y - 1)%epn];
			A[(i + x - 1)/epn ][(i + x - 1)%epn]= t + A[(i + x - 1)/epn][(i + x - 1)%epn];
		//	C[(i+x-1)/epn][(i+x-1)%epn]=A[(i + x - 1)/epn ][(i + x - 1)%epn];
		}
	}

	for(long i=0;i<N;i++)
	{
		if(i!=N-1)
		{
			A[i/epn][i%epn] = A[(i+1)/epn][(i+1)%epn];
		//	C[i/epn][i%epn] =  A[i/epn][i%epn];
		}
		else
		{
			A[i/epn][i%epn]=reduce_value;
		//	C[i/epn][i%epn]=reduce_value;
		}
	}
	/*		
	printf("Original array: \n");
	for(long i=0;i<N;i++)
	{
		printf("%ld ", B[i/epn][i%epn]);
	}
	printf("\n");
	printf("Prefix scan: \n");
	 for(long i=0;i<N;i++)
	{
		printf("%ld ", A[i/epn][i%epn]);
	}
	
	printf("\n");
	*/
	return 0;
}
