***********************************
ABB RobotStudio
***********************************
ABB RobotStudio is the IDE used to program ABB Robot. It can be downloded from ABB website. In the following examples IRB2600-12/1.85 6-axis industrial robot is used. The model is IRB2600 with a payload of 12Kg and a working range of 1.85m.

.. figure:: images/irb2600_12_185.png
    :align: center
    :figwidth: 400px

    IRB2600-12/18.5

New Virtual controller
=======================
The following video show ho to create a new virtual controller from scratch. The virtual controller once created, can be run.
It show also how to create a module where we declare the main procudre, that is the starting point of robot program.

.. raw:: html

   <iframe width="560" height="315" src="https://www.youtube.com/embed/jG8MnEuxfFY" frameborder="0" allowfullscreen></iframe>

The robot program entry point is called "main" by default. It can be changed, at this point you need to information the controller about the new entry name. This is done in "Configuration - Controller - Task" under the column "Main Entry" write the desired name.

Jogging
========
Jogging is used to move the robot in manual mode using the teachpendant joystick. In order to move the robot, the key on the electrical cabinet should be on manual position, motor are inserted and the deadman switch is always hold.

.. figure:: images/teachpendant.png
    :align: center
    :figwidth: 400px

    ABB teachpendant

The real teach pendant is the same as the virtual felxpendant of RobotStudio. On the virtual one you can find the operating mode key and the motor pushbutton. In a real robot theycan be found on the eltrical cabinet of the robot.

.. figure:: images/key.png
    :align: center
    :figwidth: 400px

    White pushbutton for motor insertion. Operating mode key.

.. figure:: images/abb_controlcabinet.jpg
    :align: center
    :figwidth: 300px

    ABB cabinet controller

Robot motion is done usually in 2 spaces: Cartesian space or joint space.
In joint space single axis, or motors, are moved independently. In cartesian space, the robot tool, TCP, is moved in the 3D space.

The following video show how to use the joystick in order to move the robot.

.. raw:: html

   <iframe width="560" height="315" src="https://www.youtube.com/embed/ik_HzEfIyCM" frameborder="0" allowfullscreen></iframe>

When moving in joint space no need to select the tool neither the workobject, cartesian reference. But when moving in cartesian space you need to select which tool you are moving and in which cartesian reference.

.. figure:: images/jogging.png
    :align: center
    :figwidth: 500px

    Jogging screen

A third way of moving a robot is relative the coordiante system of its tool. The ''Reorient'' mode allow to rotate the tool arround the origin of its coordiante system about its three axis.

New virtual controller from a backup
=======================================
A virtual controller can be created from an existing backup of a robot. The backup can be of a real robot or another virual controller.

.. raw:: html

   <iframe width="560" height="315" src="https://www.youtube.com/embed/x2w-yy8ci8Q" frameborder="0" allowfullscreen></iframe>

When creating the virtual controller from a backup, RobotStudio only define the robot model, the verision of robotware and other options. The program is not loaded to the virtual controller. In order to load the program, you need to restore the backup as shown in the video.
In order to modify any thing in the robot, program or configuration, you need to "Request Write Access".

Write a program
=================
Once a controller is created, the program can be written in the IDE. The program can be divided in Modules and Routines (Procuderes and Funcions).

.. raw:: html

   <iframe width="560" height="315" src="https://www.youtube.com/embed/0XEh9NJJaHM" frameborder="0" allowfullscreen></iframe>

The video show three instructions written in the main procedure. It show also how to run the robot in RobotStudio. The same way can be used on a real robot.

Example
===========

Open an already existing virtual controller and copy the following code snippet in the main module.

.. literalinclude:: ../../../code/Exercises/ABB/MainModule.mod

Usually a program is prepared offline, then transferd to a real robot. Target positions are Usually taken from mechanical layout, and they don't match the real ones.

During commisiong the position need to be adjusted. The robot is moved manually, by jogging, to the desired position and the position is saved, teached, in the relative variable.

.. figure:: images/ModifyRobTarget.gif
    :align: center
    :figwidth: 400px

    Teach a position

......... video coming soon

Robot Pointers
=================
ABB robot have two kinds of pointers: Program Pointer (PP) and Motion Pointer (MP). The PP is shown as an arrow, and the MP as a robot icon.
The Robot controller, in some cases, can execute several instructions following a motion instruction while is moving. In this case on the program editor you can see the Motion pointer on a motion instruction while the program pointer is on following instructions.

.. figure:: images/pointers.png
    :align: center
    :figwidth: 400px

    Program Pointer (PP) and Motion Pointer (MP)

During commissioning, sometimes you need to skip some instruction or go back to execute previous ones. The program pointer can be moved on a desired line. In the program editor select the line where you want to move the pointer then select "Debug - PP to Cursor". This can be done only in order to move the pointer to other instructions within the same routine.

A single routine can be selected in order to run it. In this case select "debug - PP to Routine" then select the desired routine.

The pointer can be resetted to the first instruction of the entry point, to the main procedure. To do so select "Debug - PP to Main".


Define a workobject
======================

Define a tool
==============


