
How to use this thing:

```
$ git clone https://github.com/vesperin/scratchspace.git cuecli
$ cd cuecli
$ ./cue concepts -k 50 -o -d corpus/
......
[light, collision, shape, trimesh, collide, box, sphere, matrix, shader, texture, body, particle, cylinder, detector, hinge, triangle, emitter, geometry, material, ball, capsule, plane, motor, motion, raycast, sweep, skeleton, bitmap, animation, quaternion, bone, wire, lighting, codec, cinematic, mass, detect, phase, bounding, clipping, collidable, hull, directional, scene, blending, spatial, surface, impulse, chase, piston]
......
Exiting with Code 0
```

Or if you want to create mappings between fully.qualified.class-names (for simplicity, we will call them `types` hereafter) and their labels, you can try this command:

```
$ ./cue concepts -k 50 -o -m -d corpus/
```

The above command will displays all these mappings on your screen. 

**Note**: labels are selected (for each array of types) based on BOTH substring matching between types AND whether these labels are found in the generated top k list of words. If they are not in the top k list, then they will not be selected. For example, let's assume the words `joint` and `socket` are not in the top 50 words in the corpus, but the word `ball` is. Then, when we run our concept tool, we will end up with the following entry:  

```
    {
      "types": [
        "net.smert.jreactphysics3d.constraint.BallAndSocketJoint",
        "net.smert.jreactphysics3d.constraint.BallAndSocketJointInfo"
      ],
      "labels": [
        "ball"
      ]
    },  
```

If you are interested in capturing more concepts, then you can increase the `-k` value. 

To see the CLI's supported commands, execute the following command:

```
$ ./cue concepts -h
```

**Note:** For now, please ignore -f and -s CLI options and the other commands, such as `# > ./cue typical` and # > ./cue represent. These options are currently being tested. 
