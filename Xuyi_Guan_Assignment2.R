#assignemnt2
#Xuyi Guan
#1
#a
A<- matrix(c(1,5,-2,1,2,-1,3,6,-3),nr=3,byrow=FALSE)
A
#b
A[,3]<- A[,2]+A[,3]
A
#########################
#2
B<- matrix(c(10,-10,10),byrow=TRUE,nc=3,nr=15)
B
BTB<-crossprod(B)
BTB
#########################
#3
matE<-matrix(0,nr=6,nc=6)
matE
matE[abs(col(matE)-row(matE))==1] <- 1
matE
########################
#4
outer(0:4,0:4,"+")
########################
#5
#a
outer(0:4,0:4,"+")%%5
#b
outer(0:9,0:9,"+")%%10
#c
outer(0:8,0:8,"-")%%9
###########################
#6
yVec<-c(7,-1,-3,5,17)
A6<-matrix(0,nr=5,nc=5)
A6<-abs(col(A)-row(A))+1
A6
solve(A6,yVec)
#7
set.seed(75)
aMat <- matrix( sample(10, size=60, replace=T), nr=6)
#a
apply(aMat,1,function(x){sum(x>4)})
#b
which(apply(aMat,1,function(x){sum(x==7)==2}))
#c
aMatColSums<-colSums(aMat)
which(outer(aMatColSums,aMatColSums,"+")>75,arr.ind=T)
##########################
#8
#a
sum(outer((1:20)^4,4:8,"/"))
#b
sum( (1:20)^4 / (3 + outer(1:20,1:5,"*")))
#c
sum( outer(1:10,1:10,function(i,j){ (i>=j)*i^4/(3+i*j) }) )
