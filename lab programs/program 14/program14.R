# Program 14: Explore and manipulate the ChickWeight dataset

library(reshape2)

cw <- as.data.frame(ChickWeight)
print(head(cw))
str(cw)
summary(cw)

# Sort by weight (ascending) and by weight (descending)
print(head(cw[order(cw$weight), ]))
print(head(cw[order(-cw$weight), ]))

# Sort by Diet then Time
print(head(cw[order(cw$Diet, cw$Time), ]))

# Melt: long format with Chick, Time and Diet as identifiers
cw_melt <- melt(cw, id.vars = c("Chick", "Time", "Diet"))
print(head(cw_melt))

# Cast: mean weight by Diet
print("Mean weight by Diet:")
print(dcast(cw_melt, Diet ~ variable, mean))

# Cast: mean weight by Diet at each Time
print("Mean weight by Time and Diet:")
print(round(dcast(cw_melt, Time ~ Diet, mean), 1))
