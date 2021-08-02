# MechaCar_Statistical_Analysis
 
## Linear Regression to Predict MPG
![Linear_Regression_MPG_Prediction](https://github.com/craig-clemens/MechaCar_Statistical_Analysis/blob/main/Resources/Linear_Regression_MPG_Prediction.PNG)
Given that the variance of a non-random variable is usually 0, the fact that the intercept, ground clearance, and vehicle length coefficients provide an amount of varience to the MPG values that are non-random.

We are able to regect the null hypothesis because of the incredibly small p-value of 5.35e-11, well below the significance level of 0.05. By rejecting the null hypothesis we can conclude that the slope is not 0.

The adjusted r-squared of 0.6825 shows that this linear model predicts the MPG fairly well. As the Multiple r-squared value increases as more variables are passed into the regression, the adjusted r-squared value controls for this increase, making it a better predictor for how effective a this linear model is. 

## Summary Statistics on Suspension Coils

![TOTAL_SUMMARY](https://github.com/craig-clemens/MechaCar_Statistical_Analysis/blob/main/Resources/Total_Summary.PNG)
###
![LOT_SUMMARY](https://github.com/craig-clemens/MechaCar_Statistical_Analysis/blob/main/Resources/Lot_Summary.PNG)

Most notably when we separate the dataset into 3 different lots, the third lot has a much larger variance, even when the overall variance for the entire dataset indicates that all manufacturing data meets the 100 pounds per square inch variance limitation.

Since the lots were chosen randomly, it is possible that a large subsection of the sample does not meet the necessary requirements for suspension coils.

## T-Tests on Suspension Coils

![WHOLE_LOT](https://github.com/craig-clemens/MechaCar_Statistical_Analysis/blob/main/Resources/Whole_Lot.PNG)

We can not reject that the sample mean may be equivilent to the true population mean as, at a standard significance level of 0.05 we reject the null hypothesis since our p-value equals 0.06. Additionally, since the confidence interval is very narrow, this implies that there is a slighter chance of coming across an observation that is within that interval, there is greater confidence than the alternative of a wider confidence interval.

![THREE_LOTS](https://github.com/craig-clemens/MechaCar_Statistical_Analysis/blob/main/Resources/Three_Lots.PNG)

### Lot 1
Lot 1 fails to reject the null hypothesis as the p-value is equal to 1. The confidence interval is also very small, thus implying that there is more precision for predicting the population mean.

### Lot 2
This also fails to reject the null hypothesis with a p-vaule of 0.6072. As with Lot 1, this second lot alos has a small confidence interval

### Lot 3
This lot fails to reject the null hypotheis with a p-value of 0.04168. Our sample mean is significantly smaller than the other two lots, and more importantly, the confidence interval for the lot three does not include the predicted population mean.

## Study Design: MechaCar vs Competition
In order to compare MechaCar's standing versus it's competition we could conduct another statistical study of linear regression on city and highway fuel efficiency. With the price of fuel ever increasing from it's all-time high, fuel efficiency is a primary feature that consumers consider when purchasing a vehicle. Included metrics could be: city and highway fuel efficiency (dependent variable); horse power (independent variable); vehicle weight (independent variable); AWD capabilities (independent variable); MPG (independent variable). 
Additionally, we would also need to collect all data regarding fuel efficiency and horse power data for the sample we have been given.
