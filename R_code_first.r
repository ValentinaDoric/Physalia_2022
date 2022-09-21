# This is the first script for the course

# Load library
library(raster)

# Set working directory
setwd("C:/lab/")

# Load data
# path /lab/data_book/raster_data/final/
setwd("C:/lab/data_book/raster_data/final/")

l2011 <- brick("p224r63_2011.grd")

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

#b1 = blue - high frequency waves
#b2 = green
#b3 = red - low frequency waves
#b4 = nir (near infrared)
#b5 = swir (short wave infrared)
#b6 = thermal ir (resolution is 60 m, should not be used)
#b7 = swir

#change the color ramp palette
cl <- colorRampPalette(c("black","grey","light grey"))(100)

#100 - we are using a hundred colors from black to white
#plot with the cl color rampalette

plot(l2011, col=cl)

#plotting single bands

plot(l2011$B1_sre, col=cl)

plot(l2011$B1_sre, col=cl)

clb <- colorRampPalette(c("dark blue", "blue", "light blue"))(100)

plot(l2011$B1_sre, col=clb)

par(mfrow=c(1,2))
plot(l2011$[[1]], col=clb)
plot(l2011$B2_sre, col=clb)
plot(l2011$B3_sre, col=clb)
plot(l2011$B4_sre, col=clb)


plotRGB(l2011, r=3, g=2, b=1, stretch="Lin") #natural colours; stretch - linear
plotRGB(l2011, r=4, g=3, b=2, stretch="Lin") #koristimo ovaj tip boja jer biljke većinui svjetlosti reflektiraju u infracrvenom i onda se biljke puno bolje vide
plotRGB(l2011, r=3, g=4, b=2, stretch="Lin")

par(mfrow=c(2,2)) #ovaj samo složi sliku s više grafova odjednom
plotRGB(l2011, r=3, g=2, b=1, stretch="Lin")  # natural colours
plotRGB(l2011, r=4, g=3, b=2, stretch="Lin")  # false colours
plotRGB(l2011, r=3, g=4, b=2, stretch="Lin")  # false colours
plotRGB(l2011, r=3, g=2, b=4, stretch="Lin")  # false colours

plotRGB(l2011, r=4, g=3, b=2, stretch="Hist") #koristimo kad želimo vidjeti još više detalja

#idemo vidjeti kako je to izgledalo 1988.
l1988 <- brick("p224r63_1988.grd")
par(mfrow=c(2,2))
plotRGB(l2011, r=4, g=3, b=2, stretch="Lin")
plotRGB(l1988, r=4, g=3, b=2, stretch="Lin")
