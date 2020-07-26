library(rpart)
library(rpart.plot)

sample(5,3) # gonna produce random numbers 
fruit= c('apple','plum','orange','cherry')
price = sample(4,4)

df=data.frame(fruit,price)
View(df)
w=c(1,3)
df[w,]
df[-w,]

s= sample(NROW(titanic),500) #sample have to be quantitative
s
titanic$Pclass= as.factor(titanic$Pclass)
titanic$Survived= as.factor(titanic$Survived)
titanic$Sex= as.factor(titanic$Sex)
t_train=titanic[s,]
t_test = titanic[-s,]


dtm = rpart(Survived~ Pclass+Sex + Age,t_train,method= 'class')
View(titanic)
rpart.plot(dtm,extra=101)

p= predict(dtm,t_test,type='class')
p 
table(t_test$Survived, predicted=p)

###########clustering##########
library(ggplot2)
summary(bicycle)
ggplot(bicycle, aes(x=latitude)) + geom_histogram(binwidth = 0.005, color= 'white') +theme_bw()
ggplot(bicycle, aes(x=longitude)) + geom_histogram(binwidth = 0.005, color= 'white') +theme_bw()

ggplot(bicycle,  aes(x=longitude, y=latitude)) +geom_point() + theme_bw()
k2= kmeans(bicycle,2) #kmeans cluster the data point 
View(k2)
k3= kmeans(bicycle,3)
k2
k3


k2$cluster
clus = cbind(bicycle, g2=k2$cluster, g3=k3$cluster)
View(clus)
head(clus)

ggplot(clus,aes(x=longitude,y=latitude,color= g2)) + geom_point() + theme_bw()+
scale_color_gradientn(colors= c('red','green'))

ggplot(clus,aes(x=longitude,y=latitude,color= g3)) + geom_point() + theme_bw()+
  scale_color_gradientn(colors= c('red','green','purple'))

## 29 NOVEMBER 2018 
#location for the kios would be the space left since it will help to know the place where the kios is required 
k2$cluster
k2$centers
k3$cluster
clus = cbind(bicycle, g2=k2$cluster, g3=k3$cluster)
head(clus)

ggplot(clus,aes(x=longitude,y=latitude,color= g3, shape=g2)) + geom_point() + theme_bw()+
  scale_color_gradientn(colors= c('red','green','purple'))

clus$g2 = as.factor(clus$g2)
k2$centers
k3$centers

ggplot(clus,aes(x=longitude,y=latitude,color= g3, shape=g2)) + geom_point() + theme_bw()+
  scale_color_gradientn(colors= c('red','green','purple'))+
  geom_point(aes(x=k2$centers[1,2],y=k2$centers[1,1]),color='blue',size=3,shape=11)+
  geom_point(aes(x=k2$centers[2,2],y=k2$centers[2,1]),color='orange',size=3,shape=11) +

geom_point(aes(x=k3$centers[1,2],y=k3$centers[1,1]),color='brown',size=3,shape=9)+
geom_point(aes(x=k3$centers[2,2],y=k3$centers[2,1]),color='brown',size=3,shape=9)+
geom_point(aes(x=k3$centers[3,2],y=k3$centers[3,1]),color='brown',size=3,shape=9)

library(geosphere)
k3$centers
distm(c(40.7772,-73.872610),c(40.6985,-74.1745),fun = distHaversine)/1609
distm(clus[1:2],c(40.7772,-73.872610),fun = distHaversine)/1609
miles2=distm(clus[1:2],k2$centers, fun= distHaversine)/1609
head(miles2)

miles3=distm(clus[1:2],k3$centers, fun= distHaversine)/1609
head(miles3)

clus[c('station21','station22')]=miles2
head(clus)

clus[c('station31','station32', 'station33')]=miles3
head(clus)
min(clus[1:244,c('station21', 'station22')])


clus$min2 = apply(clus[c('station21','station22')],1, FUN = min)
clus$min3 = apply(clus[c('station31','station32', 'station33')],1, FUN = min)
clus$gain = clus$min2- clus$min3

ggplot(clus,aes(x=gain))+ geom_histogram(binwidth=.005)+theme_bw()

                                         
                                         
                                         
                                         #decision tree , confusion matrix 
#any value which gives the biggest drop is good in algo
                                         

