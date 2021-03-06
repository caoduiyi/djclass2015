#Isualization_using_R
#Nothing can do Group 
plot(c(1,2,3), c(1,2,3))
plot(c(-3,3), c(-1,5), type = "b", xlab="x", ylab="y")
# fitting and abline
x <- c(1,2,3) 
y <- c(1,3,8) #
plot(x,y) 
lmout <- lm(y ~ x) 
abline(lmout) 
#Lines & density
lines(c(2.5,4.5),c(5,5))
data("mtcars")
d1 = density(mtcars$cyl,from=0,to=100)
d2 = density(mtcars$mpg,from=0,to=100)
plot(d1,main="",xlab="")
lines(d2, col = "purple")
# points & text
plot(mtcars$cyl,mtcars$mpg, type = "n")
points(mtcars$cyl,mtcars$mpg,pch="+")
text(5,20,": )")
# curve and polygon
f = function(x) return(1-exp(-x))
curve(f,0,2)
polygon(c(1.5,1.5,1.8,1.2),c(0,0,f(1.2),f(1.2)),col="yellow")
library(lattice)
a <- 1:10
b <- 1:15
eg <- expand.grid(x=a,y=b)
eg$z <- eg$x^2 + eg$x * eg$y
wireframe(z ~ x+y, eg)
require(ggplot2)
pie <- ggplot(mtcars, aes(x = factor(1), fill = factor(cyl))) +
  geom_bar(width = 2, position = "fill", color = "black")
pie
pie + coord_polar(theta = "y")
# start with a dataset
require(ggplot2) 
data(diamonds) 
set.seed(42) 
small = diamonds[sample(nrow(diamonds), "500"), ] 
head(small)
p = ggplot(data = small, 
           mapping = aes(x = carat, y = price))
p + geom_point()
# ӳ����״����
p = ggplot(data=small, 
           mapping=aes(x=carat,               
                       y=price,
                       shape=cut)) 
p+geom_point()


# ӳ����ɫ����
p = ggplot(data=small, mapping=aes(x=carat, y=price, shape=cut, colour=color)) 
p+geom_point()

# ֱ��ͼ
ggplot(small)+geom_histogram(aes(x=price))

ggplot(small)+geom_histogram(aes(x=price, fill=cut))

ggplot(small)+geom_histogram(aes(x=price, fill=cut), position="dodge")

# ��״ͼ
ggplot(small)+geom_bar(aes(x=clarity))

ggplot()+geom_bar(aes(x=c(LETTERS[1:4]),y=1:4), stat="identity")

#�ܶȺ���ͼ
ggplot(small)+geom_density(aes(x=price, colour=cut))

ggplot(small)+geom_density(aes(x=price,fill=clarity))

#��ʽͼ
ggplot(small)+geom_boxplot(aes(x=cut, y=price,fill=color))

#��� scale
ggplot(small)+
  geom_point(aes(x=carat, y=price, shape=cut, colour=color))+
  scale_y_log10()+
  scale_colour_manual(values=rainbow(7))

# ͳ�Ʊ任��Statistics��
ggplot(small, aes(x=carat, y=price))+geom_point()+scale_y_log10()+stat_smooth()


## geom_smooth: method="auto" and size of largest group is >=1000, so using gam with formula: y ~ s(x, bs = "cs"). Use 'method = x' to change the smoothing method.

#����ϵͳ��Coordinante��
ggplot(small)+geom_bar(aes(x=cut, fill=cut))+coord_flip()

ggplot(small)+geom_bar(aes(x=factor(1), fill=cut))+coord_polar(theta="y")

# ����ͼ
ggplot(small)+geom_bar(aes(x=factor(1), fill=cut))+coord_polar()

# �϶����õ��ͼ
ggplot(small)+geom_bar(aes(x=clarity, fill=cut))+coord_polar()

#ͼ�㣨Layer��

p = ggplot(mtcars, aes(x = hp, y = mpg))+
  geom_point(size = 4)
p

p = ggplot(mtcars, aes(x = hp, y = mpg))+
  geom_point( size = 4) + 
  stat_smooth(method = 'loess')
p

#���棨Facet��

ggplot(small, aes(x=carat, y=price))+
  geom_point(aes(colour=cut))+
  scale_y_log10() +
  facet_wrap(~cut)+
  stat_smooth()

#���⣨Theme��
p <- ggplot(small)+geom_boxplot(aes(x=cut, y=price,fill=color)) 
p + ggtitle("Price vs Cut")+xlab("Cut")+ylab("Price")
require(ggthemes) 
## Loading required package: ggthemes
# install.packages("ggthemes)
p + theme_wsj()

