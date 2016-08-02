
How to use this thing:

```
$ git clone https://github.com/vesperin/scratchspace.git cuecli
$ cd cuecli
$ ./cue concepts -k 4 -d corpus/
[INFO] Number of files in corpus? 977
Ignoring a package.java class
Ignoring a package.java class
========================
Creating mapping.txt
file created. This file contains many {word: {[types], [methods | constructors (e.g., methods(C))]}} entries
========================
Additional Info: 
Clusters of semantically related words:
[body, matrix, capsule, shader]
========================

Exiting with Code 0
```


Want to help related to the CLI? 

```
$ ./cue concepts -h
```

**Note:** Please ignore -f CLI option.
