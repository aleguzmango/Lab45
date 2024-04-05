#EJEMPLO 4 PLOT A HOOVER CURVE

library(EconGeo)

#Generate vectors of industrial and population count
ind=c(0,10,10,30,50)
pop=c(10,15,20,25,30)

#Check de ind vector
ind

#Check de pop vector
pop

#Run the function  (30% of the population produces 50% of the industrial output)
Hoover.curve(ind,pop)

#Compute the corresponding Hoover Gini
Hoover.Gini(ind,pop)

#EJEMPLO GINI

#Generate vectors of industrial count
ind=c(0,10,10,30,50)

#Run the function 
Gini(ind)

#Generate a region-industry matrix
mat=matrix(
  c(0,1,0,0,
    0,1,0,0,
    0,1,0,0,
    0,1,0,1,
    0,1,1,1), ncol=4, byrow = T)
rownames(mat)= c("R1", "R2", "R3", "R4", "R5")
colnames(mat)= c("I1", "I2", "I3", "I4")

#Run the function
Gini(mat)

#Run the function by aggregating all industries
Gini(rowSums(mat))

#Run the function for industry 1 only (perfect equality)
Gini(mat[,1])

#Run the function for industry 2 only (perfect equality)
Gini(mat[,2])

#Run the function for industry 3 only (perfect unequality: max Gini= (5-1)/5)
Gini(mat[,3])

#Run the function for industry 4 only (top 40% produces 100% of the output)
Gini(mat[,4])

#EJEMPLO HOOVER.GINI

#Generate vectors of industrial and population count
ind=c(0,10,10,30,50)
pop=c(10,15,20,25,30)

#Run the function (30% of the population produces 50% of the industrial output)
Hoover.Gini(ind, pop)

#Generate a region - industry matrix
mat=matrix(
  c(0,10,0,0,
    0,15,0,0,
    0,20,0,0,
    0,25,0,1,
    0,30,1,1), ncol = 4, byrow = T)
rownames(mat)= c("R1", "R2", "R3", "R4","R5")
colnames(mat)= c("I1", "I2", "I3", "I4")

#Run the function
Hoover.Gini(mat,pop)

#Run the function by aggregating all industries
Hoover.Gini(rowSums(mat),pop)

#Run the function for industry 1 only
Hoover.Gini(mat[,1], pop)

#Run the function for industry 2 only (perfectly proportional to population)
Hoover.Gini(mat[,2], pop)

#Run the function for industry 3 only (30% of the pop. produces 100% of the output)
Hoover.Gini(mat[,3], pop)

#Run the function for industry 4 only (55% of the pop. produces 100% of the output)
Hoover.Gini(mat[,4], pop)

#EJEMPLO LOCATIONAL.GINI

#Generate a region-industry matrix
mat=matrix(
  c(100,0,0,0,0,
    0,15,5,70,10,
    0,20,10,20,50,
    0,25,30,5,40,
    0,40,55,5,0), ncol = 5, byrow = T)
rownames(mat)= c("R1", "R2", "R3", "R4", "R5")
colnames(mat)=c("I1", "I2", "I3", "I4", "I5")

#Run the function
locational.Gini(mat)

#EJEMPLO LOCATIONAL.GINI.CURVE

#Generate a region -industry matrix
mat=matrix(
  c(100,0,0,0,0,
    0,15,5,70,10,
    0,20,10,20,50,
    0,25,30,5,40,
    0,40,55,5,0), ncol=5, byrow = T)
rownames(mat)= c("R1", "R2", "R3", "R4", "R5")
colnames(mat)=c("I1", "I2", "I3", "I4", "I5")

#Run the function (shows industry 5)
locational.Gini.curve(mat)
locational.Gini.curve(mat, pdf=TRUE)

#EJEMPLO LORENZ.CURVE

#Generate vector of industrial count
ind= c(0,10,10,30,50)

#Run the function
Lorenz.curve(ind)
Lorenz.curve(ind,pdf=TRUE)
Lorenz.curve(ind, plot=FALSE)

#Generate a region - industry matrix
mat=matrix(
  c(0,1,0,0,
    0,1,0,0,
    0,1,0,0,
    0,1,0,1,
    0,1,1,1), ncol=4, byrow = T)
rownames(mat)= c("R1", "R2", "R3", "R4", "R5")
colnames(mat)= c("I1", "I2", "I3", "I4")

#Run the function
Lorenz.curve(mat)
Lorenz.curve(mat, pdf=TRUE)
Lorenz.curve(mat, plot=FALSE)

#Run the function by aggregating all industries
Lorenz.curve(rowSums(mat))
Lorenz.curve(rowSums(mat),pdf=TRUE)
Lorenz.curve(rowSums(mat), plot = FALSE)

#Run the function for industry 1 only (perfect equality)
Lorenz.curve(mat[,1])
Lorenz.curve(mat[,1], pdf=TRUE)
Lorenz.curve(mat[,1], plot=FALSE)

#Run the function for industry 2 only (perfect equality)
Lorenz.curve(mat[,2])
Lorenz.curve(mat[,2], pdf=TRUE)
Lorenz.curve(mat[,2], plot=FALSE)

#Run the function for industry 3 only (perfect unequality)
Lorenz.curve(mat[,3])
Lorenz.curve(mat[,3], pdf=TRUE)
Lorenz.curve(mat[,3], plot=FALSE)

#Run the function for industry 4 only (top 40% produces 100% of the output)
Lorenz.curve(mat[,4])
Lorenz.curve(mat[,4], pdf=TRUE)
Lorenz.curve(mat[,4], plot=FALSE)

#Compare the distribution of the industries
par(mfrow=c(2,2))
Lorenz.curve(mat[,1])
Lorenz.curve(mat[,2])
Lorenz.curve(mat[,3])
Lorenz.curve(mat[,4])