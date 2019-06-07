************************
Style guide
************************

Project organization
=========================

Every project should have:

    - README.md
    - CHANGELOG.md
    - Flowchart with yed, and converted in image(png or jpg)

The backup is projectName-Type-year-month-day-version-ProgrammerName.zip
For example :

    - Excersice01-PLC-2019-05-09-v0.0.1-Abed.zip
    - A-JC-18-003-PLC-2019-05-09-v0.0.1-Abed.zip
    - A-JC-18-003-ROBOT-2019-05-09-v0.0.1-Abed.zip

If in the same line have more than one robot, the robot id number should be the same as electrical drawings:

- A-JC-18-003-ROBOT01-2019-05-09-v0.0.1-Abed.zip
- A-JC-18-003-ROBOT02-2019-05-09-v0.0.1-Abed.zip
- A-JC-18-003-ROBOT03-2019-05-09-v0.0.1-Abed.zip
- A-JC-18-003-ROBOT04-2019-05-09-v0.0.1-Abed.zip

README
----------

General informations about the project.

References

Special equipments

Short description about the workflow

CHANGELOG
--------------

The version is : major.minor.patch

The date is year-mont-day

## [X.Y.Z] - aaaa-mm-dd Name(who)
### Added
for new features.
### Changed
for changes in existing functionality.
### Deprecated
for soon-to-be removed features.
### Removed
for now removed features.
### Fixed
for any bug fixes.
### Security
in case of vulnerabilities.

Flowchart or UML
------------------

Software used: https://www.yworks.com/products/yed/download

Every state machine should be illustrated in a chart (flowchart, uml,...).


Abbreviations
================

- Push button : pb, btn
- Lamp : lmp
- Limit switch : lsw
- Command : cmd
- Cylinder: cyl
- Table : tab
- Rotate : rot
- Robot : rob
- Machine : mach
- Panel view : hmi
- Actual : act
- Previous : prev
- Emergency : emrg, emr

Prefixes
---------
- Input : i
- Output : q or o
- Analog input : ai
- Analog output : ao or aq
- Ethernet : eth
- Function block : FB
- Function : FC
- User data type: udt
- Structure: st

Names
=======
S7 plc languages are not case sensitive, Button and button are the same variable.

Use ``camelCase`` for primitive data types: bool, word, dword, int, dint, real.

Use ``PascalCase`` for complex data types, and prefix them with the type:

    - User defined data (udt, structures): udtConveyor, stConveyor
    - AOI: AOI_Conveyor, AOI_Cylinder
    - Function Block : FB_Conveyor, FB_Conveyor

The name of a variable should begin with the machine name, station name, component then function. For example: ``conveyorMotorRun``, ``conveyorMotorStop``, ``conveyorLswPartPresent``.

``CONSTANT`` variables in capital letters

Data blocks:

  - Global data block: dbConveyor, dbRobot, dbCylinder
  - Instance data block: idbConveyor, idbCylinder.

Rules
========

Rungs or segments must have a title

Rungs or segments should be commented in English, no Chinese nor other languages.

Every variable should have:

    - Clear name
    - Clear description
    - If the variable is a signal, it should have the signal number as electrical drawing.

Every station have its own Function block, or own program in case of ControlLogix PLC.

Use state machine:

    - Make state chart using OpenOffice draw or Yed software..
    - Use unique numbers for states, use enumerations not numbers directly.

Cylinder:

    Cylinder states are: Opened, Closed.
    Cylinder commands are: Open, close.
    Don't use Forward, backward, up, down, left, right,...

Software organization
==========================
Functions (FB, FC) are the main building block of any program. The start point of S7 PLC is ``OB1``, in ``OB1`` we should find only function calls. In ``OB1`` There is no business logic.

Every station should have is own main ``FB`` and global ``DB`` and instance ``DB``.
If the station have more then one component, every component should have its own ``FB``. The components's ``FB`` should be instantiated in the ``STAT`` section of the parent ``FB``. All functions and DBs of a station should be grouped in a folder.

``FB`` that can be reused in different projects, should be placed in the ``_Library`` folder. A library with ``FB`` should be used.

.. note::

  Follow example after training
