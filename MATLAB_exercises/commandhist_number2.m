disp('The disp command writes text')
The disp command writes text
t = logspace(-3,6,10);
x = 0.1234567890123456*t;
format short
t

t =

   1.0e+06 *

  Columns 1 through 6

    0.0000    0.0000    0.0000    0.0000    0.0000    0.0001

  Columns 7 through 10

    0.0010    0.0100    0.1000    1.0000

x

x =

   1.0e+05 *

  Columns 1 through 6

    0.0000    0.0000    0.0000    0.0000    0.0000    0.0001

  Columns 7 through 10

    0.0012    0.0123    0.1235    1.2346

format long
x

x =

   1.0e+05 *

  Columns 1 through 3

   0.000000001234568   0.000000012345679   0.000000123456789

  Columns 4 through 6

   0.000001234567890   0.000012345678901   0.000123456789012

  Columns 7 through 9

   0.001234567890123   0.012345678901235   0.123456789012346

  Column 10

   1.234567890123456

format long e
x

x =

  Columns 1 through 2

     1.234567890123456e-04     1.234567890123456e-03

  Columns 3 through 4

     1.234567890123456e-02     1.234567890123456e-01

  Columns 5 through 6

     1.234567890123456e+00     1.234567890123456e+01

  Columns 7 through 8

     1.234567890123456e+02     1.234567890123456e+03

  Columns 9 through 10

     1.234567890123456e+04     1.234567890123456e+05

format short e
x

x =

  Columns 1 through 5

   1.2346e-04   1.2346e-03   1.2346e-02   1.2346e-01   1.2346e+00

  Columns 6 through 10

   1.2346e+01   1.2346e+02   1.2346e+03   1.2346e+04   1.2346e+05

format short g
x

x =

  Columns 1 through 5

   0.00012346    0.0012346     0.012346      0.12346       1.2346

  Columns 6 through 10

       12.346       123.46       1234.6        12346   1.2346e+05

format long g
x

x =

  Columns 1 through 2

      0.000123456789012346       0.00123456789012346

  Columns 3 through 4

        0.0123456789012346         0.123456789012346

  Columns 5 through 6

          1.23456789012346          12.3456789012346

  Columns 7 through 8

          123.456789012346          1234.56789012346

  Columns 9 through 10

          12345.6789012346          123456.789012346

disp(sprintf('The 10th element of x is x(10) = %6.3f',x(10)))
The 10th element of x is x(10) = 123456.789
disp(sprintf('The 10th element of x is x(10) = %10.3f',x(10)))
The 10th element of x is x(10) = 123456.789
disp(sprintf('The 10th element of x is x(10) = %12.3f',x(10)))
The 10th element of x is x(10) =   123456.789
diary off
