library(dplyr)

#Deliverable 1

#Import
mecha_car_mpg <- read.csv(file='MechaCar_mpg.csv', check.names = FALSE, stringsAsFactors = FALSE)

#Linear regression predicting MPG of Prototypes
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg))
# r-squared: 0.6825
# p-value: 5.35e-11