
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

Or if you want to create mappings between types and their labels, you can try this command:

```
$ ./cue concepts -k 50 -o -m -d corpus/
```

The above command will displays all these mappings on your screen.

To see the CLI's supported commands, execute the following command:

```
$ ./cue concepts -h
```

**Note:** For now, please ignore -f CLI option and the other commands, such as `# > ./cue typical` and # > ./cue represent.
