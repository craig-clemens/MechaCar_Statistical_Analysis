library(dplyr)

#Deliverable 1

#Import
mecha_car_mpg <- read.csv(file='MechaCar_mpg.csv', check.names = FALSE, stringsAsFactors = FALSE)

#Linear regression predicting MPG of Prototypes
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg))
# r-squared: 0.6825
# p-value: 5.35e-11

#Deliverable 2

#Import
suspension_coil <- read.csv(file='Suspension_Coil.csv', check.names = FALSE, stringsAsFactors = FALSE)
#Summary Dataframe
total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
#Lot Summary Dataframe
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))


#Deliverable 3
t.test(suspension_coil$PSI, mu = 1500)
Lot1 = subset(suspension_coil, Manufacturing_Lot == 'Lot1')
Lot2 = subset(suspension_coil, Manufacturing_Lot == 'Lot2')
Lot3 = subset(suspension_coil, Manufacturing_Lot == 'Lot3')
t.test(Lot1$PSI, mu = 1500)
# p-value: 1
t.test(Lot2$PSI, mu = 1500)
# p-value: 0.6072
t.test(Lot3$PSI, mu = 1500)
# p-value: 0.04168
