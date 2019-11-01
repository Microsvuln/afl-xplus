#!/bin/bash
echo "######################################################"
echo "# Welcome to AFL-xPLUS coverage improvement utility  #"
echo "# Original idea by : Brendan Dolan-Gavitt (@moyix)   #"
echo "# Implementation script : @Microsvuln                #"
echo "######################################################"
echo "==============================================================================================="
echo "# Usage : When you execute this script, a full path to the target binary for fuzzing is needed #"
echo "# example :                                                                                    #"
echo "# target binary full path: /home/afl-xPlus/myTarget                                            #"
echo "# Just hold on some seconds upon you see the finished!                                         #"
echo "==============================================================================================="
mkdir textcases
read -p "target binary full path: "  fpath
echo "Welcome $fpath"
./covgen.sh $fpath
echo "finished!"
echo "Now run AFL to fuzz the fpath and add -x textcases/ to your regular AFL switches to give dictionary"
echo "Happy fuzzing!"
