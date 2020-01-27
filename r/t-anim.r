





## convert -fuzz 10% -transparent white axes.png axes.png 

for i in $(seq -w 1 60)
do 
    convert -rotate ${i} axes.png axes_rotated_${i}.png
done

convert -loop 0 -delay 20 axes_rotated_*.png  output.gif
