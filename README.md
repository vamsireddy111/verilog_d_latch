## D Latch (Data Latch)
# Overview

The D latch is an improved version of SR latch that eliminates the invalid state.

D → Data input
EN → Enable signal
Q → Output

# Truth Table
EN	D	Q(next)	   Description
1	  0  0	       Transparent
1	  1	 1	       Transparent
0	  X	 Q        (prev)	Hold

# Key Features
No invalid state 
Controlled using Enable signal
Level-sensitive device
Widely used in basic storage elements

# Working Principle
When EN = 1 → Output follows input (Q = D)
When EN = 0 → Output holds previous value
