#!/bin/zsh

# to use it:
# *Prereqs*:
# * big.txt file should be in the same directory as cuecli.jar 
 
# 1. find the 50 most frequent concepts found in a corpus (with on screen printing)
# **Note:** This command wont generate a json file containing mappings between types and words.
# > ./cue concepts -k 50 -o -d corpus/
# 
# [light, collision, shape, trimesh, collide, box, sphere, matrix, shader, texture, body, particle, cylinder, detector, hinge, triangle, emitter, geometry, material, ball, capsule, plane, motor, motion, raycast, sweep, skeleton, bitmap, animation, quaternion, bone, wire, lighting, codec, cinematic, mass, detect, phase, bounding, clipping, collidable, hull, directional, scene, blending, spatial, surface, impulse, chase, piston]
# 2. Create as many groups (clusters) of fully qualified classnames based on the 50 most frequent concepts in a corpus (with on screen printing).
# > ./cue concepts -k 50 -o -m -d corpus/
# 
# ....
#     {
#      "types": [
#        "org.ode4j.ode.DMassC",
#        "org.dyn4j.geometry.Mass",
#        "org.ode4j.ode.internal.DxMass",
#        "org.ode4j.ode.DMass"
#      ],
#      "labels": [
#        "mass"
#      ]
#    },
# ....
# {
#  "types": [
#    "com.jme3.math.Matrix3f",
#    "org.ode4j.math.DMatrix3C",
#    "org.ode4j.ode.DMatrix",
#    "org.ode4j.math.DMatrix3",
#    "org.ode4j.math.DMatrixN",
#    "com.jme3.math.Matrix4f",
#    "org.ode4j.ode.internal.Matrix",
#    "net.smert.jreactphysics3d.mathematics.Matrix2x2",
#    "org.dyn4j.geometry.Matrix33",
#    "org.dyn4j.geometry.Matrix22",
#    "net.smert.jreactphysics3d.mathematics.Matrix3x3"
#  ],
#  "labels": [
#    "matrix"
#  ]
# },
# ....
# **Note**: Removing the -o option will indicate .cue to produce a mappings.json containing 
# all results, instead of printing these results on the screen.
# To see the CLI's supported commands, execute the following command: ./cue concepts -h

java -cp ".:cuecli.jar:*" com.vesperin.cue.BasicCli $*