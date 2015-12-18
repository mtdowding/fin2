# FIN2
##6-D Cube Integral

This code computes an electrostatic potential energy from two cubes, yet with a non-uniform charge density. Computing this 6-D integral was done upon each 3 local coordinates of the cubes. Computing the integral also used a vegas method as well as a monte carlo method for comparison. Next a dipole approximation was used to get an estimate of the potential energy between either cube. 

Timing between the two methods of integration was done as well to see the comparison between each method. The monte carlo method converges similar to 1/sqrt(N), where N is the total number of monte carlo steps. After initial calculations computations were increased by a factor of 13.76^2 to achieve the similar accuracy in both methods. However increasing number of computations also increases the runtime of the program.

This code is an edited version of the code provided by Dr. Michael Rozman for Physics 2200 at the University of Connecticut.
