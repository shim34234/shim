set autoscale
set palette defined ( 0 "blue", 1 "red" )
plot 'out.txt' w boxes
replot [0:100] x * x - 50 * x - 4
pause mouse any "Any key or button will terminate"

