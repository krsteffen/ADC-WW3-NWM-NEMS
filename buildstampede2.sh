#!/bin/bash -i 

# Description : Script to compile NSEModel NEMS application
# Usage       : ./build.sh
# Date        : Feb 27, 2020
# Contact     : moghimis@gmail.com 


# load modules
source modulefiles/stampede/ESMF_NUOPC

cd NEMS
curdir=$PWD ;

echo $curdir
cd $curdir/src ; make clean ;
cd $curdir 

#clean up
echo "clean up"
make -f GNUmakefile distclean_ADCIRC COMPONENTS="ADCIRC"
#make -f GNUmakefile distclean_WW3DATA COMPONENTS="WW3DATA"
make -f GNUmakefile distclean_ATMESH COMPONENTS="ATMESH"
#make -f GNUmakefile distclean_NWM COMPONENTS="NWM"
make -f GNUmakefile distclean_WW3 COMPONENTS="WW3"

#make
#make -f GNUmakefile build COMPONENTS="ADCIRC"
##make -f GNUmakefile build COMPONENTS="ADCIRC NWM ATMESH"
##make -f GNUmakefile build COMPONENTS="ADCIRC ATMESH WW3 NWM"
#make -f GNUmakefile build COMPONENTS="ADCIRC ATMESH WW3DATA"
#make -f GNUmakefile build COMPONENTS="ATMESH"
make -f GNUmakefile build COMPONENTS="ADCIRC ATMESH WW3"
##make -f GNUmakefile build COMPONENTS="WW3DATA ADCIRC ATMESH"
##make -f GNUmakefile build COMPONENTS="ADCIRC WW3DATA ATMESH"
##make -f GNUmakefile build COMPONENTS="ADCIRC WW3DATA ATMESH"
##make -f GNUmakefile build COMPONENTS="ADCIRC ATMESH  NWM"
#make -f GNUmakefile build COMPONENTS="WW3"



