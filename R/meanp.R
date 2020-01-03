OGS.meanp<-function(X,Y){

  #requireNamespace("inflasso","metap")
  library("inflasso")
  library("metap")
  X<-as.matrix(X)
  Y<-as.matrix(Y)
  res1 <- df.model(X,Y)
  res1<-as.vector(res1)
  res1<-2*(1-pnorm(abs(res1)))

  res2 <- df.regpath(X,Y)
  res2<-as.vector(res2)
  res2<-2*(1-pnorm(abs(res2)))

  res3 <- df.cvpath(X,Y)
  res3<-as.vector(res3)
  res3<-2*(1-pnorm(abs(res3)))

  res4 <- df.lambda(X,Y)
  res4<-as.vector(res4)
  res4<-2*(1-pnorm(abs(res4)))

  resNEW<-cbind(res1,res2,res3,res4)
  resNEW<-as.matrix(resNEW)

  q<-nrow(resNEW)
  pa<-matrix(0,nrow=q)
  for (i in 1:q){
    p1<-meanp(resNEW[i,])
    pa[i]<-p1[[2]]
  }
  mylist=list("p-value"=pa)
  return(mylist)
}
