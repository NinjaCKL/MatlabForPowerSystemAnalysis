% power flow Newton Raphson 6 bus for peak load 
basemva = 100;  accuracy = 0.0001;  maxiter = 10;

%        Bus Bus  Voltage Angle   ---Load---- -------Generator----- Injected
%        No  code Mag.    Degree  MW    Mvar  MW  Mvar Qmin Qmax    Mvar
busdata=[1   1    1.05    0.0      0     0     0   0     0    0      0
         2   2    1.05    0.0      0     0    50   0     0    0      0
         3   2    1.07    0.0      0     0    60   0     0    0      0
         4   0    1.00    0.0     110   110    0   0     0    0      0
         5   0    1.00    0.0      90    90    0   0     0    0      0
         6   0    1.00    0.0     120   120    0   0     0    0      0];

%                                        Line code
%         Bus bus   R      X      B      = 1 for lines
%         nl  nr  p.u.   p.u.   p.u.     > 1 or < 1 tr. tap at bus nl
linedata=[1   2   0.10   0.20   0.040     1
          1   4   0.05   0.20   0.040     1
          1   5   0.08   0.30   0.060     1
          2   3   0.05   0.25   0.060     1
          2   4   0.05   0.10   0.020     1
          2   5   0.10   0.30   0.040     1
          2   6   0.07   0.20   0.050     1
          3   5   0.12   0.26   0.050     1
          3   6   0.02   0.10   0.020     1
          4   5   0.20   0.40   0.080     1
          5   6   0.10   0.30   0.060     1];

lfybus                     % form the bus admittance matrix
lfnewton     % Power flow solution by Newton-Raphson method
busout       % Prints the power flow solution on the screen
lineflow       % Computes and displays the line flow and losses     