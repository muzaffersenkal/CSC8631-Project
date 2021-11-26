## course published date
helper.course.published_date <- c("5 Sep 2016", "20 Mar 2017", "18 Sep 2017",
                                  "13 Nov 2017", "5 Feb 2018", "11 Jun 2018", "10 Sep 2018")


# round off nearest 0.5 point
helper.round_off<- function(number){
  return(round(number * 2) / 2)
}


##  IQR function for outlier detection
helper.iqr <- function(x) {
  Q3<-quantile(x,0.75) # third quantile
  Q1<-quantile(x,0.25) # first quantile
  IQR<-(Q3-Q1)
  left<- (Q1-(1.5*IQR))
  right<- (Q3+(1.5*IQR))
  c(x[x <left],x[x>right])
}