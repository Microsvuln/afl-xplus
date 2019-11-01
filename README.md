# afl-xplus
AFL Fuzzer with a bit improvement to increase coverage by [@Microsvuln](https://twitter.com/microsvuln)

AFL-xplus simply aims at improving code coverage using an idea originally developed by Brendan Dolan-Gavitt from Newyork University (@moyix)

I've just made using this as simple as possible, in addition to that, there will be more improvement on code coverage and corpus generation which will be informed consequently

Usage : just before running AFL against target for fuzzing do the following steps :

1) execute ./axcov.sh script
2) Give the full path to your target, example : /home/afl-xplus/mytarget , then hit enter & wait until finish
3) Now you have a folder named "textcases", this is your dictionary for coverage improvement
4) Run afl-fuzzer against the target with -x textcases/ switch, example :
./afl-fuzz -i inp/ -o out/ -x textcases/ -- mytarget @@
5) Happy fuzzing


