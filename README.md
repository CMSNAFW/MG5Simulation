# MG5Simulation

Welcome to CMSNAFW MGSimulation page! Here we have some basic tutorials and examples on how to work with madgraph and some concepts.

We will assume you work on lxplus9 for the time being.

## Installing madgraph

follow the instructions here:

https://launchpad.net/mg5amcnlo

In other words:

    wget https://launchpad.net/mg5amcnlo/3.0/3.6.x/+download/MG5_aMC_v3.6.3.tar.gz 
    mkdir MG5_aMC_v363
    tar -xzpvf MG5_aMC_v3.6.3.tar.gz -C MG5_aMC_v363

Launch as 

    cd MG5_aMC_v363/MG5_aMC_v3_6_3
    ./bin/MG5_aMC
    
Other info at: https://amcatnlo.web.cern.ch/


## Linking the opportune libraries

Once you launch the code, install the lhadpf, i.e. the parton density functions:

   install lhapdf6

Then, from command line, you need to add a series of libraries to the path in order to link python with the version of madgraph and lhapdf that you are using:


    PWDVAR=`pwd`
    PATH=$PATH:$PWDVAR/HEPTools/lhapdf6_py3/bin:$PWDVAR/HEPTools/lhapdf6_py3/include
    LD_LIBRARY_PATH=$PWDVAR/HEPTools/lhapdf6_py3/lib:/home/aya/mg5/MG5_aMC_v2_8_0/HEPTools/lhapdf6_py3/lib64:$LD_LIBRARY_PATH
    PYTHONPATH=$PWDVAR/HEPTools/lhapdf6_py3/lib64/python3.9/site-packages/lhapdf:$PYTHONPATH
    export PATH
    export LD_LIBRARY_PATH
    export PYTHONPATH

Alternatively, you can download this file that will do exactly the same thing:

    wget https://raw.githubusercontent.com/CMSNAFW/MG5Simulation/refs/heads/main/mgsetup.sh
    source ./mgsetup.sh

## Generate an example of tt events:

use the command:

    ./bin/MG5_aMC
    
Then from the command prompt you can generate a process going from two "protons" (i.e. a collection of partons weighted by their pdf) to a couple of top quark antiquark, where an antiparticle is indicated with the tilde afterwads:

    generate p p > t t~

save the output 

    output ttbar_tutorial

and generate the events with the launch command:

    launch ttbar_tutorial

    
