***********************************
CoDeSys based IDE
***********************************

CoDeSys is an IDE to program PLCs that are IEC61131-3 complaint. Beckhoff Twincat, Wago, Schneider, ABB and others base their IDE on CoDeSys. While Twincat add functionalities and integrate CoDeSys in a Visual Studio console, ABB and Schneider IDE looks like the original CoDeSys.

The following examples can be used with any IDE based on CoDeSys. They are all free of charge. They all have a simulator free of charge, exept ABB.

The use of the IDE is very intuitive respect to TIA portal. It is a very powerfull IDE especially when programming and debugging ``ST`` languagge. For programming in ``LD`` TIA portal is more easy and fast to use.

CoDeSys first steps
====================

Create a new project and write the following code::

    PROGRAM PLC_PRG
    VAR
        counter: INT:=0;
        count: BOOL :=FALSE;
    END_VAR

    IF count THEN
        counter:= counter+1;
    END_IF

The following video show how to create a new project, write a small program and simulate it.

.. raw:: html

   <iframe width="560" height="315" src="https://www.youtube.com/embed/vKs6IrT1WZw" frameborder="0" allowfullscreen></iframe>


Visualization and HMI
=======================

CoDeSys Raspberry Pi
=====================

CoDeSys Ladder digram
=======================


Twincat 3
============

.. raw:: html

   <iframe width="560" height="315" src="https://www.youtube.com/embed/dbiXvkHblPc" frameborder="0" allowfullscreen></iframe>

.. raw:: html

   <iframe width="560" height="315" src="https://www.youtube.com/embed/e7THbXImqxY" frameborder="0" allowfullscreen></iframe>