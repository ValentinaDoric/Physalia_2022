# This is the first script for the course

# Load library
library(raster)

# Set working directory
setwd("C:/lab/")

# Load data
# path /lab/data_book/raster_data/final/
setwd("C:/lab/data_book/raster_data/final//")

l2011 <- brick("p224r6_2011")

l2011

class      : RasterBrick 
dimensions : 1499, 2967, 4447533, 7  (nrow, ncol, ncell, nlayers)
resolution : 30, 30  (x, y)
extent     : 579765, 668775, -522705, -477735  (xmin, xmax, ymin, ymax)
crs        : +proj=utm +zone=22 +datum=WGS84 +units=m +no_defs 
source     : p224r63_2011.grd 
names      :      B1_sre,      B2_sre,      B3_sre,      B4_sre,      B5_sre,       B6_bt,      B7_sre 
min values :         0.0,         0.0,         0.0,         0.0,         0.0,       295.1,         0.0 
max values :   1.0000000,   0.2563655,   0.2591587,   0.5592193,   0.4894984, 305.2000000,   0.3692634 

#resolution in meters
#do not consider B6 since it's completely different from the rest

plot(l2011)
