*************
Programming
*************

:download:`Download project Exercises.zip <../../../code/Exercises/Siemens/Exercises/Exercises.zip>`

Basic operations
===================
The following images show the basics operations used in Ladder languagge. 
Mainly contacts, coils, timers and edge detection are often used. In the images are missing variables.

.. figure:: images/mainLogic.png
    :align: center
    :figwidth: 600px

Contact and Coils
-------------------
A contact and a coil are the most basic operations in PLC. They correspond to an assignment operation. 

.. figure:: images/coil.png
    :align: center
    :figwidth: 600px

    lamp := pushButton

Written as IF statement::

    IF pushButtonOn = TRUE THEN 
        lamp := TRUE;
    ELSE
        lamp := FALSE;
    END_IF

.. figure:: images/coil_not.png
    :align: center
    :figwidth: 600px

    lamp := NOT pushButton

.. figure:: images/contact.gif
    :align: center
    :figwidth: 600px

    Contact-Coil in ladder and its equivalent in SCL

Trigger
-----------
Sometimes we need to detect the change in a signal. When detection from 0 to 1 is needed an R_TRIG (rising edge) is used. The output Q of R_TRIG is one only in the cycle where the signal CLK go from 0 to 1, otherwise is always 0.

.. figure:: images/r_trig.jpg
    :align: center
    :figwidth: 200px

The falling egde detector, F_TRIG, detect the transtion from 1 to 0. The output Q is 1 only in the cycle where the CLK go from 1 to 0, otherwise is always 0.

.. figure:: images/f_trig.jpg
    :align: center
    :figwidth: 200px

The follwing animation show how to use the edge detectors. You will never see the output Q go to 1 while debugging. The cylce time of the PLC is too short, between 1ms and 10 ms. But we can see its result.

.. figure:: images/trigLD.gif
    :align: center
    :figwidth: 600px

    R_TRIG positive signal edge in ladder

.. figure:: images/trigSCL.gif
    :align: center
    :figwidth: 600px

    R_TRIG positive signal edge in SCL

Timers
--------
There are different types of timers.  The TON, Time On delay, is used to delay its input. It have two input variables and two outputs. The IN is the variable or signal we want to delay of a certain time PT. The output Q is the result of the delay. When IN go to 1, Q will go to 1 after a time PT.

.. figure:: images/ton.png
    :align: center
    :figwidth: 400px

.. figure:: images/tonLD.gif
    :align: center
    :figwidth: 600px

    TON (On delay) in ladder

The TOF timer, is a Time Off delay. The output Q go to zeroa after PT time from when IN go to zero.

.. figure:: images/tof.png
    :align: center
    :figwidth: 400px

.. figure:: images/tofLD.gif
    :align: center
    :figwidth: 600px

    TOF (Off delay) in ladder

The following animation show how to call timers in SCL language.

.. figure:: images/tonSCL.gif
    :align: center
    :figwidth: 600px

    TON (On delay) in SCL

Set Reset
----------
While the normal coil corrispond to an assignment. The set and reset coils corrispond to IF conditions.

.. figure:: images/set.png
    :align: center
    :figwidth: 600px

When the condition is true, the variable is written to true::

    IF pushButtonOn = TRUE THEN 
        lamp := TRUE;
    END_IF

.. figure:: images/reset.png
    :align: center
    :figwidth: 600px

When the condition is true, the variable is written to false::

    IF pushButtonOn = TRUE THEN
        lamp := FALSE;
    END_IF

Note that there is no ELSE statement. While in a normal coil there is one.

The following animation show how the set reset coils works.

.. figure:: images/set_reset.gif
    :align: center
    :figwidth: 600px

    Set Reset a signal


The follwing animation show a common error made by beginners.

.. figure:: images/set_coil_err.gif
    :align: center
    :figwidth: 600px

    Why the output didn't change value?

.. figure:: images/set_coil_err.png
    :align: center
    :figwidth: 600px

    What is wrong in this code ????

In Ladder language you can use the set coil a lot of times with the same variable. But you can't use a normal coil with that same variable. The reason is the set coil is assigned only if the consition are true otherwise keep its old value.
A normal coil update always the value of the variable to true or false.

The oLamp variable in the set coil is assigned the value true if the output of the trigger is true, otherwise it keep its old value.
The oLamp varible in the normal coil is assigned the value true if the varible of the contact is true, and the value of false if the value of the contact is false.

SCL
=====

If statement
--------------
Think about the ``if`` statement as you think in daily life.
For example:

  - If today is raining I take umbrella
  - If it is cold I put a coat
  - I you find orange then buy, otherwise buy apple.

.. figure:: images/if.png
    :align: center
    :figwidth: 600px

    IF statement

Case statement
-----------------
Case is like if, it check if the numerical value of the variable is present in the list, and execute the instruction corresponding to that value.
For example let create a variable ``day`` of type ``int``. The first day of the week is one the last day is seven.
So If I want to make a decision tree, I list in the ``case`` statement days from 1 to 7, and for every value I do something:

  - If day is 1 (Monday), I go to work
  - If day is 2, I do something else
  - ...
  - If day is 6, I stay at home.

.. figure:: images/switch.png
    :align: center
    :figwidth: 600px

    Switch Case statement

Remember that a case can be written also as an if.

The Case statement is more suitable in ``state machine``. In Siemens there is no ``enumeration`` data type. In Tia portal siemens introduce CONSTANTS, so we can emulate an ``enumeration``. It is more clear to have name than numbers. For example, is more clear to say Monday than day 1. And if Day 1 for me is Sunday? So is better to create a set of CONSTANTS with unique value and use them.

.. code:: pascal

  int today;
  const int MONDAY := 1;
  const int TUESDAY := 2;
  const int WEDNESDAY := 3;
  const int THURSDAY := 4;
  const int FRIDAY := 5;
  const int SATURDAY := 6;
  const int SUNDAY := 7;

  CASE today OF
    MONDAY:
      I go to work;

    SATURDAY:
      I sleep more;

    ELSE:
      Error day is not recognized;

    END_CASE;


Loop
-------

Try to avoid ``for`` and ``while`` in PLC programming if you don't know what are you doing. Infinite loops stop the plc.
