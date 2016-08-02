#!/bin/zsh

# to use it:
# *Prereqs*:
# * big.txt file should be in the same directory as cuecli.jar 
 
# 1. find the 5 most typical Java implementations of objects in file methods.txt
# > ./cue typical -k 5 -f ../path/to/methods.txt -e

# 2. find the most representative 'typical' Java implementation of objects in file methods.txt
# > ./cue represent -f ../path/to/methods.txt

# 3. find the 50 most typical concepts assigned in methods.txt
# > ./cue concepts -k 50 -d corpus/
# the output is a JSON file containing  many 
# {word: {[types], [methods | constructors (e.g., methods(C))]}} entries. Where 
# the first array contains the fully qualified names of types where a word occurs, and 
# the second array contains the methods where a word occurs. 

java -cp ".:cuecli.jar:*" com.vesperin.cue.TypicalityCliRunner $*