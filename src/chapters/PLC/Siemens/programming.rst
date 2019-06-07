*************
Programming
*************

:download:`Download project Exercises.zip <../../../code/Exercises/Siemens/Exercises/Exercises.zip>`

Basic operations
===================

Coils
------

.. figure:: images/mainLogic.png
    :align: center
    :figwidth: 600px

.. figure:: images/contact.gif
    :align: center
    :figwidth: 600px

    Coil in ladder and its equivalent in scl

Trigger
-----------
.. figure:: images/r_trig.jpg
    :align: center
    :figwidth: 200px

.. figure:: images/f_trig.jpg
    :align: center
    :figwidth: 200px

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

.. figure:: images/ton.png
    :align: center
    :figwidth: 400px

.. figure:: images/tonLD.gif
    :align: center
    :figwidth: 600px

    TON (On delay) in ladder


.. figure:: images/tof.png
    :align: center
    :figwidth: 400px

.. figure:: images/tofLD.gif
    :align: center
    :figwidth: 600px

    TOF (Off delay) in ladder


.. figure:: images/tonSCL.gif
    :align: center
    :figwidth: 600px

    TON (On delay) in SCL

Set Reset
----------

.. figure:: images/set_reset.gif
    :align: center
    :figwidth: 600px

    Set Reset a signal


.. figure:: images/set_coil_err.gif
    :align: center
    :figwidth: 600px

    Why the output didn't change value?

.. figure:: images/set_coil_err.png
    :align: center
    :figwidth: 600px

    What is wrong in this code ????

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

    If statement

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
