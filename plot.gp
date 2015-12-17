set term png
set output "plot.png"

set logscale x 2
set logscale y

p "res" u 1:2 w 1, "res" u 1:3 w 1, "res" u 1:4 w 1
