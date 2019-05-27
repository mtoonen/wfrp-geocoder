
#!/bin/bash

#http://www.gitzmansgallery.com/tiles/6_28_25.jpg
#zoom_z_y
#7:
#0_0 t/m 124_110

for x in {0..124}
do
	for y in {0..110}
	do
		URL="http://www.gitzmansgallery.com/tiles/7_"$x"_"$y".jpg"
		echo $URL
		wget $URL -P cache
	done
done
