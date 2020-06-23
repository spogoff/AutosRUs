install.packages("tidyverse")
install.packages("jsonlite")
library(jsonlite)
library(tidyverse)

MechaCar_table <- read.csv(file='MechaCar_mpg.csv')
model <- lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance ,data=MechaCar_table) #generate multiple linear regression model
summary(model) #generate summary statistics

suspension_coil_table <- read.csv(file='Suspension_Coil.csv')
susprnsion_coil_summary <- suspension_coil_table  %>% summarize(Mean_PSI=mean(PSI), SD_PSI=sd(PSI), Median_PSI=median(PSI),Var_PSI = var(PSI)) #create summary table

t.test(log10(suspension_coil_table$PSI))

