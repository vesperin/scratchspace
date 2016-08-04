
How to use this thing:

```
$ git clone https://github.com/vesperin/scratchspace.git cuecli
$ cd cuecli
$ ./cue concepts -k 50 -d corpus/
[INFO] Number of files in corpus? 977
......
Exiting with Code 0
```

The above command will produce two files: typetowords.txt and wordtotypes.txt. 
The first one contains entries of this kind:

```
com.jme3.input.ChaseCamera#read: {[cinematic, capsule, bitmap, bone, emitter, shader, light, square, heightfield, collide, texture, delta, vertices, geometry, impulse, volume, motor, calculate, mass, quaternion, spatial, torque, friction, triangle, vecf, axes, speed, shape, radius, rotate, transmission, sphere, collision, bounding, hallmarks, hinge, scene, material, ball, plane, camel, arena, rotation, velocity, matrix, body, collidable, piston, joints, collect]}
```

The second one contains entries of this kind:

```
body:{[org.dyn4j.collision.AxisAlignedBounds,org.ode4j.ode.internal.joints.DxJointBall,org.ode4j.ode.internal.joints.DxJointDBall,org.ode4j.ode.internal.joints.OdeJointsFactoryImpl,...and many more....]}
```

To see the CLI's supported commands, execute the following command:

```
$ ./cue concepts -h
```

**Note:** For now, please ignore -f CLI option and the other commands, such as `# > ./cue typical` and # > ./cue represent.
