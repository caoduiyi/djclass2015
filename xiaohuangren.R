# TryR
# С���˷ֶ�
# 2015/10/01
##########chapter 1##########
1+1
"Arr,matey!"
6*7
3<4
2+2==5
T==TRUE
x<-42
x/2
x <- "Arr, matey!"
x
x<-TRUE
sum(1,3,5)
rep("Yo ho!",times = 3)
sqrt(16)
help(sum)
example(min)
help(rep)
list.files()
"bottle1.R"
"bottle2.R"
###########chapter2############
#start chapter2 below

c(4,7,9)
c('a','b','c')
c(1,TRUE,"three")
5:9
seq(5,9)
seq(5,9,0.5)
9:5
sentence <- c("walk","the","plank")
sentence[3]
sentence[1]
sentence[3] <-"dog"
sentence[4] <-"to"
sentence[c(1,3)]
sentence[2:4]
sentence[5:7] <- c('the','poop','deck')
sentence[6]
ranks<-1:3
names(ranks)<-c("first","second","third")
ranks
ranks["first"]
ranks["third"]<-4
vesselsSunk<-c(4,5,1)
barplot(vesselsSunk)
names(vesselsSunk)<-c("English","France","Norway")
barplot(vesselsSunk)
barplot(1:100)
a<-c(1,2,3)
a+1
a/2
a*2
b<-c(4,5,6)
a+b
a-b
a==c(1,99,3)
a<c(1,99,3)
sin(a)
sqrt(a)
x<-seq(1,20,0.1)
y<-sin(x)
plot(x,y)
values<- -10:10
absolutes<-abs(values)
plot(values,absolutes)
a <- c(1,3,NA,7,9)
sum(a)
help(sum)
sum(a,na.rm=TRUE)
##########chapter3###########
#start chapter3 below
matrix(0,3,4)
a<-1:12
print(a)
matrix(a,3,4)
plank<-1:8
dim(plank)<-c(2,4)
print(plank)
matrix(1,5,5)
print(plank)
plank[2,3]
plank[1,4]
plank[1,4]<-0
plank[2,]
plank[,4]
plank[,2:4]
elevation<-matrix(1,10,10)
elevation[4,6]<-0
contour(elevation)
persp(elevation)
persp(elevation,expand=0.2)
contour(volcano)
persp(volcano,expand=0.2)
image(volcano)
############chapter4############
#start chapter4 below
limbs <- c(4, 3, 4, 3, 2, 4, 4, 4)
names(limbs) <- c('One-Eye', 'Peg-Leg', 'Smitty', 'Hook', 'Scooter', 'Dan', 'Mikey', 'Blackbeard')
mean(limbs)
barplot(limbs)
abline(h=mean(limbs))
limbs <- c(4, 3, 4, 3, 2, 4, 4, 14)
names(limbs) <- c('One-Eye', 'Peg-Leg', 'Smitty', 'Hook', 'Scooter', 'Dan', 'Mikey', 'Davy Jones')
mean(limbs)
barplot(limbs)
abline(h=mean(limbs))
median(limbs)
abline(h=median(limbs))
pounds <- c(45000, 50000, 35000, 40000, 35000, 45000, 10000, 15000)
barplot(pounds)

meanValue <- mean(pounds)

abline(h=meanValue)

deviation<-sd(pounds)
abline(h = meanValue + deviation)
abline(h = meanValue - deviation)
###########chapter 5############
#start chapter 5 below
chests <- c('gold', 'silver', 'gems', 'gold', 'gems')
types <- factor(chests)
print(chests)
print(types)
as.integer(types)
levels(types)
weights <- c(300, 200, 100, 250, 150)
prices <- c(9000, 5000, 12000, 7500, 18000)
plot(weights, prices)
plot(weights,prices,pch=as.integer(types))
legend("topright",c("gems","gold","silver"),pch=1:3)
legend("topright",levels(types),pch=1:length(levels(types)))
############chapter 6###########
#start chapter 6 below
treasure <- data.frame(weights, prices, types)
print(treasure)
treasure[[2]]
treasure[["weights"]]
treasure$prices
treasure[["types"]]
list.files()
read.csv("targets.csv")
read.table("infantry.txt",sep="\t")
read.table("infantry.txt",sep="\t",header=TRUE)
targets <- read.csv("targets.csv")
infantry <- read.table("infantry.txt", sep="\t", header=TRUE)
merge(x = targets, y = infantry)
############chapter 7###########
#start chapter 7
piracy <- read.csv("piracy.csv")
gdp <- read.table("gdp.txt", sep=",", header=TRUE)
countries <- merge(x = gdp, y = piracy)
plot(countries$GDP, countries$Piracy)
cor.test(countries$GDP, countries$Piracy)
line <- lm(countries$Piracy ~ countries$GDP)
abline(line)
#install.packages("ggplot2")
help(package = "ggplot2")
weights <- c(300, 200, 100, 250, 150)
prices <- c(9000, 5000, 12000, 7500, 18000)
chests <- c('gold', 'silver', 'gems', 'gold', 'gems')
types <- factor(chests)
#qplot(weights, prices, color = types)

###########chapter 8 ###########
#no more practice

