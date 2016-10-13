#!/bin/bash

export PATH=./:$PATH
export LD_LIBRARY_PATH=./:$LD_LIBRARY_PATH

java -cp skink.jar au.edu.mq.comp.skink.CMain $1