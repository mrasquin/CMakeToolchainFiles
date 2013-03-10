set(CMAKE_SYSTEM_NAME BlueGeneQ-static)

set(COMPILER_SEARCH_PATHS /bgsys/drivers/ppcfloor/comm/xl/bin /soft/compilers/ibmcmp-feb2013/xlf/bg/14.1/bin /soft/compilers/ibmcmp-feb2013/vac/bg/12.1/bin /soft/compilers/ibmcmp-feb2013/vacpp/bg/12.1/bin)

#find_program(CMAKE_C_COMPILER       mpicc    ${COMPILER_SEARCH_PATHS} )
#find_program(CMAKE_CXX_COMPILER     mpicxx    ${COMPILER_SEARCH_PATHS} )
#find_program(CMAKE_Fortran_COMPILER mpif90  ${COMPILER_SEARCH_PATHS} )
find_program(CMAKE_C_COMPILER       bgxlc    ${COMPILER_SEARCH_PATHS} )
find_program(CMAKE_CXX_COMPILER     bgxlC    ${COMPILER_SEARCH_PATHS} )
find_program(CMAKE_Fortran_COMPILER bgxlf90  ${COMPILER_SEARCH_PATHS} )

SET_PROPERTY(GLOBAL PROPERTY TARGET_SUPPORTS_SHARED_LIBS FALSE)
SET_PROPERTY(GLOBAL PROPERTY TARGET_ARCHIVES_MAY_BE_SHARED_LIBS FALSE)

# Make sure MPI_COMPILER wrapper matches the gnu compilers.  
# Prefer local machine wrappers to driver wrappers here too.
#find_program(MPI_C_COMPILER NAMES mpicc PATHS /bgsys/drivers/ppcfloor/comm/xl/bin/)
#find_program(MPI_CXX_COMPILER NAMES mpicxx PATHS /bgsys/drivers/ppcfloor/comm/xl/bin/)
#find_program(MPI_Fortran_COMPILER NAMES mpif90 mpif77 PATHS /bgsys/drivers/ppcfloor/comm/xl/bin/)

#set(CMAKE_FIND_ROOT_PATH
#	/bgsys/drivers/ppcfloor
#	/bgsys/drivers/toolchain/V1R1M0-2011_1208_2228/gnu-linux/powerpc64-bgq-linux/
#	/bgsys/drivers/toolchain/V1R1M0-2011_1208_2228/gnu-linux/powerpc64-bgq-linux/lib
#	/bgsys/drivers/toolchain/V1R1M0-2012_0131_2135/gnu-linux/lib/gcc/powerpc64-bgq-linux/4.4.6/
#	/bgsys/drivers/toolchain/V1R1M0-2012_0131_2135/gnu-linux/lib/gcc/
#	/bgsys/drivers/toolchain/V1R1M0-2012_0131_2135/gnu-linux/powerpc64-bgq-linux/lib/powerpc64-bgq-linux/4.4.6/
#	/bgsys/drivers/toolchain/V1R1M0-2012_0131_2135/gnu-linux/powerpc64-bgq-linux/
#	/bgsys/drivers/DRV2012_0131_2135/ppc64-rhel60/comm/xl/
#	/bgsys/drivers/DRV2012_0131_2135/ppc64-rhel60/comm/sys/
#	/bgsys/drivers/DRV2012_0131_2135/ppc64-rhel60/spi/
#	/soft/compilers/ibmcmp-feb2012/vac/bg/12.1/bglib64
#	/soft/compilers/ibmcmp-feb2012/vac/bg/12.1/
#)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

#set(MPI_Fortran_INCLUDE_PATH /bgsys/drivers/DRV2012_0131_2135/ppc64-rhel60/comm/sys/include;/bgsys/drivers/DRV2012_0131_2135/ppc64-rhel60;/bgsys/drivers/DRV2012_0131_2135/ppc64-rhel60/spi/include;/bgsys/drivers/DRV2012_0131_2135/ppc64-rhel60/spi/include/kernel/cnk;/bgsys/drivers/DRV2012_0131_2135/ppc64-rhel60/comm/xl/include;/bgsys/drivers/DRV2012_0131_2135/ppc64-rhel60/comm/xl/include)
#set(MPI_Fortran_LIBRARIES "-lmpichf90 -lmpichf90 -lmpich -lopa -lmpl -lpami  -lSPI -lSPI_cnk -lpthread -lrt -lstdc++")
#set(MPI_Fortran_LINK_FLAGS "-L/bgsys/drivers/DRV2012_0131_2135/ppc64-rhel60/comm/xl/lib -L/bgsys/drivers/DRV2012_0131_2135/ppc64-rhel60/comm/sys/lib -L/bgsys/drivers/DRV2012_0131_2135/ppc64-rhel60/spi/lib")
