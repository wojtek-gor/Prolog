#include<stdio.h>
#include<cuda.h>
#include<cuda_runtime_api.h>
#include <string>

int main( void ) {
	cudaDeviceProp prop;

	int count;
	cudaGetDeviceCount( &count );

	for( int i = 0; i < count; i++ ) {
		cudaGetDeviceProperties( &prop, i );
			printf("  Device Number                 : %d\n", i);
    		printf("  Device name                   : %s\n", prop.name);
    		printf("  Compute capability            : %d.%d\n", prop.major, prop.minor);
    		printf("  Memory Clock Rate        (KHz): %d\n", prop.memoryClockRate);
    		printf("  Memory Bus Width        (bits): %d\n", prop.memoryBusWidth);
    		printf("  Peak Memory Bandwidth   (GB/s): %.0f\n", (2.0*prop.memoryClockRate*prop.memoryBusWidth/8)/1.0e6);
    		printf("  Total global mem          (GB): %.3f\n", prop.totalGlobalMem/1024.0/1024.0/1024.0 );  	
    		printf("  Shared mem per block      (kB): %.3f\n", prop.sharedMemPerBlock/1024.0 );  	
    		printf("  Registers per block       (kB): %.3f\n", prop.regsPerBlock/1024.0 );  	
    		printf("  WARP size            (threads): %d\n", prop.warpSize );  	
    		printf("  Pitch memory              (MB): %.3f\n", prop.memPitch/1024.0/1024.0 );  	
    		printf("  Max threads per block         : %d\n", prop.maxThreadsPerBlock );  	
    		printf("  Max threads dim               : %d x %d x %d\n", prop.maxThreadsDim[0],prop.maxThreadsDim[1],prop.maxThreadsDim[2] );  	
    		printf("  Max grids dim                 : %d x %d x %d\n", prop.maxGridSize[0],prop.maxGridSize[1],prop.maxGridSize[2] );  	
    		printf("  Max clock rate            (Hz): %d\n", prop.clockRate );  	
    		printf("  Total constant memory     (kB): %.3f\n", prop.totalConstMem/1024.0 );  	
    		printf("  Multi processor count         : %d\n", prop.multiProcessorCount );  	
    		printf("  Execution timeout enabled     : %d\n", prop.kernelExecTimeoutEnabled );  	
    		printf("  GPU integrated                : %d\n", prop.integrated );  	
    		printf("  Mapping host memory           : %d\n", prop.canMapHostMemory );  	
    		printf("  Compute mode                  : %d\n", prop.computeMode );  	
    		printf("  Texture 1D size               : %d\n", prop.maxTexture1D );  	
			/*
    		printf("  Texture 2D size               : %d x %d\n", prop.maxTexture2D[0],maxTexture2D[1] );  	
			printf("  Texture 3D size               : %d x %d x %d\n", prop.maxTexture3D[0],maxTexture3D[1],maxTexture3D[2] );  	
			*/
			printf("  Concurrent kernels            : %d\n", prop.concurrentKernels );  	
			printf("  ECC enabled                   : %d\n", prop.ECCEnabled );  	
			printf("  TCC driver                    : %d\n", prop.tccDriver );  	
			printf("  Unified addressing            : %d\n", prop.unifiedAddressing );  	
			printf("  L2 cache size             (kB): %.3f\n", prop.l2CacheSize/1024.0 );  	
			printf("  Max threads per multiproc     : %d\n", prop.maxThreadsPerMultiProcessor );  	
			printf("  Shared mem per multiproc  (kB): %.3f\n", prop.sharedMemPerMultiprocessor/1024.0 );  	
			printf("  Registers per multiproc   (kB): %.3f\n", prop.regsPerMultiprocessor/1024.0 );  	
			printf("  Multi GPU board               : %d\n", prop.isMultiGpuBoard );  	
			printf("  32/64 bit floats ratio        : %d\n", prop.singleToDoublePrecisionPerfRatio );  	
			printf("  Pageable memory access        : %d\n", prop.pageableMemoryAccess );  	
			printf("  Concurrent kernels            : %d\n\n", prop.concurrentManagedAccess );  
	}			
}
