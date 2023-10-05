set autoscale
set palette defined ( 0 "blue", 1 "red" )
plot 'out.txt' w p pt 7 ps 0.5 lc palette
pause mouse any "Any key or button will terminate"
