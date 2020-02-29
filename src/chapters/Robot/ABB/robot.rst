***********************************
ABB RobotStudio
***********************************

New Virtual controller
=======================

.. raw:: html

   <iframe width="560" height="315" src="https://www.youtube.com/embed/jG8MnEuxfFY" frameborder="0" allowfullscreen></iframe>

Jogging
========

.. raw:: html

   <iframe width="560" height="315" src="https://www.youtube.com/embed/ik_HzEfIyCM" frameborder="0" allowfullscreen></iframe>

New virtual controller from a backup
=======================================

.. raw:: html

   <iframe width="560" height="315" src="https://www.youtube.com/embed/x2w-yy8ci8Q" frameborder="0" allowfullscreen></iframe>

Write a program
=================

.. raw:: html

   <iframe width="560" height="315" src="https://www.youtube.com/embed/0XEh9NJJaHM" frameborder="0" allowfullscreen></iframe>

Example
===========

Open an already existing virtual controller and copy the following code snippet in the main module.

.. literalinclude:: ../../../code/Exercises/ABB/MainModule.mod

Usually a program is prepared offline, then transferd to a real robot. Target positions are Usually taken from mechanical layout, and they are not exact.
During commisiong the position need to be adjusted. The robot is move manually, by jog, to the desired position and the position is saved, teached, in the relative variable.

.. figure:: images/ModifyRobTarget.gif
    :align: center
    :figwidth: 400px

    Teach a position

......... video coming soon

Program cursor
================
