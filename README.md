
How to use this thing:

```
$ git clone https://github.com/vesperin/scratchspace.git cuecli
$ cd cuecli
$ ./cue concepts -k 50 -d corpus/
[INFO] Number of files in corpus? 977
......
Exiting with Code 0
```

The above command will produce three files: clusters.txt, typestowords.txt. and wordstotypes.txt. 

The first one contains entries of this kind:


```
 1. [org.ode4j.ode.internal.joints.DxJointPiston#dJointAddPistonForce, org.ode4j.ode.internal.joints.DxJointHinge#getInfo2, org.ode4j.ode.internal.joints.DxJointUniversal#getInfo2, org.ode4j.ode.internal.joints.DxJoint#setBall2]: [body, joints, hinge2, torque, ball, calculate, impulse, piston, hinge, mass, motor, transmission, velocity, speed, axes, collision, shape, collidable, square, plane, vector3, triangle, vec3f, collide, vertices, rotate, bounding, volume, sphere, matrix4f, hallmarks, quaternion, vec3, rotation, cinematic, radius, bitmap, geometry, matrix, capsule, vector4f, material, vector2f, light, shader, camel, vector3f, matrix3, spatial, texture]
```

Where the first array are the fully.qualified.class#method entries, and the second array are the words that could potentially label these classes. These words are sorted in ascending order by frequency.


The second one contains entries of this kind:


```
com.jme3.input.ChaseCamera#read: {[cinematic, capsule, bitmap, bone, emitter, shader, light, square, heightfield, collide, texture, delta, vertices, geometry, impulse, volume, motor, calculate, mass, quaternion, spatial, torque, friction, triangle, vecf, axes, speed, shape, radius, rotate, transmission, sphere, collision, bounding, hallmarks, hinge, scene, material, ball, plane, camel, arena, rotation, velocity, matrix, body, collidable, piston, joints, collect]}
```

And the third one, it contains entries of this kind:

```
body:{[org.dyn4j.collision.AxisAlignedBounds,org.ode4j.ode.internal.joints.DxJointBall,org.ode4j.ode.internal.joints.DxJointDBall,org.ode4j.ode.internal.joints.OdeJointsFactoryImpl,...and many more....]}
```

To see the CLI's supported commands, execute the following command:

```
$ ./cue concepts -h
```

**Note:** For now, please ignore -f CLI option and the other commands, such as `# > ./cue typical` and # > ./cue represent.
