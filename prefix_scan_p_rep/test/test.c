#include "memoryweb.h"
#include "cilk.h"
#include "timing.h"
#include "stdio.h"
const long N = 32;
long b = 5;
long *A;
//long *A = (long*)malloc(N*sizeof(long));
void worker (long begin, long end, va_list args)
{
	long *A = va_arg(args, long*);
	long b = va_arg(args, long);

	for (long i = begin; i < end; ++i)
	{
		A[i]= A[i] + b;
	}
}
int main()
{
	//long n = 32;
	//long b = 5;
	A = mw_malloc1dlong(N);
	int i;
	
	for(i=0;i<N;i++)
		A[i]=0;

	emu_local_for(0, N, LOCAL_GRAIN_MIN(N, 64), worker, A, b);
	return 0;
}
