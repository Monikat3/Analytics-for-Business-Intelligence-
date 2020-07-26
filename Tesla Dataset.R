str(TSLA)
#names of the column
names(TSLA)
TSLA[1,]
TSLA[1,5]
TSLA <- read.csv("C:/Users/RBSUser/Desktop/TSLA(1).csv", stringsAsFactors=FALSE)
cat <- read.csv("C:/Users/RBSUser/Desktop/TSLA(1).csv", stringsAsFactors=FALSE)
hat <- read.csv("C:/Users/RBSUser/Desktop/TSLA(1).csv", stringsAsFactors=FALSE)

x=c(1,3,5)

TSLA[1,c(2,3)]
TSLA[1,2:3]

rep(1,6)
seq(1,9,2)
seq(1,9,.5)

TSLA[c(1,2,3),c(2,3)]
TSLA[c(1,3,5),c(2,3)]
TSLA[,5]

TSLA$Close[1]
TSLA$Close[2]

TSLA$Date
TSLA$Perid

TSLA$Period=as.Date(TSLA$Date,"%m/%d/%Y")

LI = TSLA[,c(1,8,2,3,4,5,6,7)]

TSLA$Date[3]

for(d in TSLA$Date)
{
  if (d =='5/3/2018' || '5/2/2018')
  {
  print(d)
}

for(d in TSLA$Date)
{
  print(d)
  
}
#additional code
  for(d in TSLA$Date)
  {
    if (d =='5/3/2018')
    {
      print('Elon Musk Rant!!')
    }
    
    for(d in TSLA$Date)
    {
      print(d)
      
    }
    for( d in TSLA$Date)
    {
      if(d=='5/3/2018')
      {
        print(d)
      }
      else if(d== '5/2/2018')
      {
        print('Elon musk rant!!')
        
      }
      else
      {
        print('trump is innocent')
      }
      
    }
  
  row_count=1
  for(d in TSLA$Date)
  {
    if(d=='5/3/2018')
    {
    rant_row = row_count
    }
    
    row_count = row_count+1
  }
    

ashwin=1
for( d in TSLA$Date)
{
  if (ashwin<rant_row)
  {
    TSLA$Naruto[ashwin]=1
  }
  else
  {
  TSLA$Naruto[ashwin]=2
  }
  ashwin=ashwin+1
}

TSLA$Naruto2= ifelse(TSLA$Period<'2018-05-03', 1,2)
  }
  tsla1= subset(TSLA,Naruto==1)
  tsla2= subset(TSLA, Naruto==2)
  
  summary(tsla1$close)
  summary(TSLA$close)
  
  boxplot(Close~ Naruto2, data=TSLA,main="TSLA Data",ylab='closing price',xlab='Rant Periods')
  
  
  for(i in 2:NROW(TSLA))
  { 
    x = TSLA$close[i-1]-1
  
  }
  
  1:5
  2:504
  
  for(i in 2 :NROW(TSLA))
  {
    TSLA$Return[i] =TSLA$close[i]/TSLA$Close[i-1] -1
    
  }
  
  
  
  
  
  
  
  
  
  
  
  waj= 1:10
  head(waj,4)
  tail(waj,3)
  head(waj,-4) #all rows except last four 
  tail(waj,-3)
  
  
  tsla=tail(TSLA,-1)
  #IF YOU WAN TO CREATE A TABLE WITHOUT FIRST ROW 
  tsla$prev = head(TSLA$close,-1)
  tsla$Return2 = tsla$close/tsla$prev-1
  
  
  
  Lecture 4 
  str(TSLA)# Date format yyyy/mm/dd
  TSLA$Period = as.Date(TSLA$Date,'%m/%d%Y') #to create a new table,as.Date is an in built function to change any data 
  #into date format 
  TSLA$cat = ifelse(TSLA$Period<'2018-05-03', 1,2)
  
  
  
  str(`TSLA(1)`)# Date format yyyy/mm/dd
  `TSLA(1)`$Period = as.Date(TSLA$Date,'%m/%d%Y') #to create a new table,as.Date is an in built function to change any data 
  #into date format 
  `TSLA(1)`$cat = ifelse(TSLA(1)$Period<'2018-05-03', 1,2)
  boxplot(close~cat,data=TSLA,main="TSLA Data",ylab= '1 Day Return',xlab= 'Rant periods')
  View(`TSLA(1)`
       #close is on x axis and y is on y axis )
       
       
       fruitdf$qty
       
       
       
       
       
       stock=tail(stock_data,10)
       stock2=head(stock,4)
       stockc = as.vector(stock2[,6])
       ret=0
       for(i in stockc)
       {
         ret=ret+i
       } 
       v=ret
       
       
