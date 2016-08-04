#!/bin/zsh

# to use it:
# *Prereqs*:
# * big.txt file should be in the same directory as cuecli.jar 
 
# 1. find the 50 most typical concepts assigned in methods.txt
# > ./cue concepts -k 50 -d corpus/
# the output consists of two JSON files (typestowords.txt, and wordtotypes.txt).
# Each file contains many 
# 1. {{fully.qualified.classname#methodname: [words ranked by tf-idf score]}} entries. 
# The higher this score, the more relevant this word is to 
# the fully.qualified.classname#methodname.
# 2. {{word: [fully.qualified.classname#methodname ranked by tf-idf score]}} entries.

java -cp ".:cuecli.jar:*" com.vesperin.cue.BasicCli $*