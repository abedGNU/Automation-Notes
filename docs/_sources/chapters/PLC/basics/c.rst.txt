*******************
C language
*******************

C++ shell
------------
C language is chosen for different reasons. It is the king of all programming languages.

In order to try the examples, you can use the online shell: http://www.cpp.sh/. These shell is mainly a C++ compiler. Since C++ is compatible with C, we will use it in order to avoid you to install the compiler on your computer.

.. _figcshellTest:
.. figure:: images/cshellTest.gif
    :align: center
    :figwidth: 600px

    C++ online shell

The following code is the main function, the entry point of any C program. For now we are interested in the ``main`` function.

.. code-block:: C
  :caption: C program
  :name: lstC

  #include <stdio.h>
  int main()
  {
    return 0;
  }

Basic syntax
^^^^^^^^^^^^^^
Any programming language borrow some concepts from mathematics: operations, variables, values and functions.

Operations are:
  - Addition
  - Subtraction
  - Multiplications
  - Division

Values can be:
  - Integers: 1, 2, 50, -10, ....
  - Real numbers: 0.2 , 1.5 , 2.5
  -

Variables are like in mathematics, can hold numeric and non numeric values.

In C and other languages (not all), we must declare a variable before using it.

.. code-block:: C
  :caption: C program
  :name: lstsum

  #include <stdio.h>
  int main()
  {
      int a=10;
      int sum;

      sum = a+ 12;

      printf("the sum = %d",sum);

      return 0;
  }

C language have different types of numeric variables:
  - int
  - double
  - float

Flow control
^^^^^^^^^^^^^^

The execution of a program is usually sequential, It begin from the first instruction until the last one. Sometime we need to change the flow of execution. In C we have different contructs for flow control:

  - if else
  - switch case
  - for
  - while

Following a simple program than compare 2 variables.

  .. code-block:: C
    :caption: If statement
    :name: lstif

    #include <stdio.h>
    int main()
    {
        int a=10;
        int b=30;

        if (a == b)
        {
            printf("a is equal to b");
        }
        else if ( a > b )
        {
            printf("a is bigger than b");
        }
        else
        {
            printf("a is smaller than b");
        }

        return 0;
      }

An equivalent to ``if`` is the ``switch``.

.. code-block:: C
  :caption: Switch statement
  :name: lstswitch

  #include <stdio.h>
  int main()
  {
      int a=10;

      switch(a){
          case 0:
              printf("a is %d", 0);
              break;
          case 10:
              printf("a is %d", 10);
              break;
          default:
              printf("Value not present");

      }
      return 0;
  }

Functions
^^^^^^^^^^
Functions are useful to group instructions that can be used more than one time and to make the program more readable. In the follwing example, a function called ``max`` is created.

.. code-block:: C
  :caption: Fucntion
  :name: lstfunc

  #include <stdio.h>

  int max(int a, int b)
  {
      if (a> b)
          return a;
      else
          return b;
  }

  int main()
  {
      int num =10, num2=20;

      int m;

      m = max(num , num2);
      printf("the maximum is %d", m);

      return 0;
  }
