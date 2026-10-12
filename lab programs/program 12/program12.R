# Program 12: Data reshaping on airquality - melt, cast, monthly averages

library(reshape2)

print(head(airquality))

# Melt: wide -> long format, keeping Month and Day as identifiers
aq_melt <- melt(airquality, id.vars = c("Month", "Day"), na.rm = TRUE)
print(head(aq_melt, 10))
print(tail(aq_melt, 5))
dim(aq_melt)

# Cast: long -> wide, computing the monthly average of each variable
monthly_avg <- dcast(aq_melt, Month ~ variable, mean)
print("Monthly averages of Ozone, Solar.R, Wind and Temp:")
print(round(monthly_avg, 2))

# Cast back to the original daily layout (first rows)
print(head(dcast(aq_melt, Month + Day ~ variable)))
