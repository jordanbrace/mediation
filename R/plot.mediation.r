plot.mediation<-function(x,...){
	plot.new()
	rect(0,0,0.25,0.25)
	rect(0.35,0.5,0.6,0.75)
	rect(0.7,0,0.95,0.25)
	text(0.125,0.125, x$charform[3])
	text(0.475,0.625, x$charform[2])
	text(0.825,0.125, x$charform[1])
	Arrows(0,0.25,0.35,0.5)
	Arrows(0.6,0.5,0.95,0.25)
	Arrows(0.25,0.125,0.7,0.125)
	text(0.475, 0.175,
			 paste("c=",round(x$lm.direct.summ[2,1],3),if(x$lm.direct.summ[2,4]<0.05){"*"}else{""},"(SE=",round(x$lm.direct.summ[2,2],3),")",sep=""),
			 cex=0.8)
	text(0.475, 0.075,
			 paste("c'=",round(x$lm.controlled.summ[2,1],3),if(x$lm.controlled.summ[2,4]<0.05){"*"}else{""},"(SE=",round(x$lm.controlled.summ[2,2],3),")",sep=""),
			 cex=0.8)
	text(0.125,0.5,
			 paste("a=",round(x$lm.mediator.summ[2,1],3),if(x$lm.mediator.summ[2,4]<0.05){"*"}else{""},"(SE=",round(x$lm.mediator.summ[2,2],3),")",sep=""),
			 cex=0.8)
	text(0.825,0.5,
			 paste("b=",round(x$lm.controlled.summ[3,1],3),if(x$lm.controlled.summ[3,4]<0.05){"*"}else{""},"(SE=",round(x$lm.controlled.summ[3,2],3),")",sep=""),
			 cex=0.8)
}
