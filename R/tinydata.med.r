tinydata.med<-function(n=100){
	X<-rnorm(n)
	M<-X+rnorm(n)
	Y<-M+rnorm(n)
	return(data.frame(X,M,Y))
}
