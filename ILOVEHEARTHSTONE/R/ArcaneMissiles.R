#' Calculate the probability of Hearthstone in R.
#'
#' `ArcaneMissiles()` returns the probability of of remaining enemies on
#' the field after using like Arcane Missiles in its arguments.
#'
#'
#' This is a generic function: A mechanism similar to arcane missiles
#' uses this function to calculate probabilities.
#'
#' @param enemyHP Numeric, number of enemies on the field.Default is `c(3,1,1)`.
#' @param damage Numeric, damage caused by each one.Default is 1.
#' @param times Numeric, repeat times.Default is 3.
#' @param n Simulation times,default is 10000.
#'
#' @return If all inputs are integer and logical, then the output
#'   will be an probability.
#' @examples
#' #ArcaneMissiles(c(3,1,1),1,3)
#'
#'
#'
#' \dontrun{
#' #ArcaneMissiles(enemyHP=c(3,1,1),times=6)
#' }
#'
#'

ArcaneMissiles<-function(enemyHP=c(3,1,1),damage = 1,times = 3,n=10000){
  resdata<-matrix(0,nrow = n,ncol = length(enemyHP))
  enemy0<-matrix(rep(sort(enemyHP,decreasing = T),n),ncol = length(enemyHP),byrow = T)
  for ( i in 1:n){
    for(j in 1:times){
      target<-sample(x = c(which(enemy0[i,]>0),which(enemy0[i,]>0)),size = 1)
      enemy0[i,target]<-enemy0[i,target]-damage
    }
    resdata[i,]<-enemy0[i,]
  }
  resdata[which(resdata>0)]<-1
  resdata[which(resdata<0)]<-0
  res<-matrix(colSums(resdata)/n,nrow = 1)
  colnames(res)<-sort(enemyHP,decreasing = T)
  return(res)
}
