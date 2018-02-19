#prepare to find object type
install.packages("pryr")
library(pryr)

#download data set
library(MASS)
df=data("USArrests")

#test for generic function
mean(USArrests[["Murder"]])
UseMethod(mean, "Murder")

#determine object type
otype(data("USArrests"))
otype(USArrests["Murder"])
isS4(USArrests)
isS4("Murder")

#explore creating an S4 object
state = setClass("state", slots=list(name="character",murder="numeric"))      
s=new("state", murder=13.2)
otype(s)

#call an S4 object
s@murder
