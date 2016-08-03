
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
File created. This file contains many {word: {[types], [methods | constructors (e.g., methods(C))]}} entries
========================
Additional Info: 
Clusters of semantically related words:
[body, matrix, capsule, shader]
========================

Exiting with Code 0
```


To see the CLI's supported commands, type 

```
$ ./cue concepts -h
```

**Note:** For now, please ignore -f CLI option and the other commands, such as `# > ./cue typical` and # > ./cue represent.
