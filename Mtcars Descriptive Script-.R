
?mtcars

#Identifying the structure of mtcars

str(mtcars)

head(mtcars)

summary(mtcars)


mtcars.wt= mtcars$wt

mtcars.Qsec= mtcars$qsec

mtcars.carbs = mtcars$carb

#.........calling out each of the date set above

mtcars.carbs

mtcars.wt

mtcars.Qsec

#creating a table for mtcars.wt, mtcars.Qsec and mtcars.carbs 
#as it would appear on paper

t= table(mtcars.carbs, mtcars.wt, mtcars.Qsec)

t

#to view "t" in the script so as to show as table

View(t)

#Question 1- creating a boxplot for wt and computing the median and Range

boxplot(mtcars.wt, main="boxplot of wt", ylab= "wt (lbs)", col = "blue", pch= 23, bg= "blue")

# Calculating Range for mtcars.wt

rng.mtcars.wt= range(mtcars.wt)

rng.mtcars.wt

Range = tapply(mtcars.wt,mtcars$wt,range,na.rm=TRUE)

Range

# Calculating Median for mtcars.wt

median(mtcars.wt)

medians = tapply(mtcars.wt,mtcars$wt,median,na.rm=TRUE)


medians

dat.wt = summary(mtcars.wt)

dat.wt

#for mtcars.Qsec...........

#creating a Histogram.............

hist(mtcars.Qsec, col ='magenta' , xlab = "Quarter Mile Time (sec)", ylab = "Frequency(HZ)", main = "Histogram of mtcars.Qsec")

#....Calculating the Mean

mean(mtcars.Qsec)

means = tapply(mtcars.Qsec,mtcars$qsec, mean,na.rm=TRUE)

means

#.....Calculating Standard Deviation

SD= sd(mtcars$qsec,na.rm=TRUE)

SD

table(mtcars$carb)

a = table(mtcars$carb)


barplot(a, col ="green", xlab = "Number of Carburators", ylab = "Frequency (Hz)",
        main = "Graphically representation of Frequency against No. of Cabs")

#For clarity, please see below 
#...............................................
#................................................
#................................................

#For Wt; Median =3.325 Range =1.513 5.424
#for Qsec; Mean = 17.84875 SD = 1.786943
#for Carbs; table generated and barplot plotted 




