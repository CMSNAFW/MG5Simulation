#!/bin/bash
PWDVAR=`pwd`
PATH=$PATH:$PWDVAR/HEPTools/lhapdf6_py3/bin:$PWDVAR/HEPTools/lhapdf6_py3/include
LD_LIBRARY_PATH=$PWDVAR/HEPTools/lhapdf6_py3/lib:/home/aya/mg5/MG5_aMC_v2_8_0/HEPTools/lhapdf6_py3/lib64:$LD_LIBRARY_PATH
PYTHONPATH=$PWDVAR/HEPTools/lhapdf6_py3/lib64/python3.9/site-packages/lhapdf:$PYTHONPATH
export PATH
export LD_LIBRARY_PATH
export PYTHONPATH
