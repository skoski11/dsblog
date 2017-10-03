query<-"SELECT name, HR
FROM Teams
WHERE yearID=1980
ORDER BY HR DESC"

result<-sqldf(query)
result$name<-factor(result$name,levels=result$name)
#Visualizing the DATA--------------------

ggplot()+
  geom_bar(data=result,aes(x=name,y=HR),stat='identity',color='blue',
           fill='white')+
  coord_flip()+
  ylab("Homeruns")+
  xlab("Team Names")+
  ggtitle("1980 Team Home Run Totals")