print.mediation<-function(x,...){
	cat(paste("     Estimate Std.Err t-value p-value\n"))
	cat(paste(" a   ",
						round(x$lm.mediator.summ[2,1],5),
						round(x$lm.mediator.summ[2,2],5),
						round(x$lm.mediator.summ[2,3],5),
						round(x$lm.mediator.summ[2,4],5),
						"\n"))
	cat(paste(" b   ",
						round(x$lm.controlled.summ[3,1],5),
						round(x$lm.controlled.summ[3,2],5),
						round(x$lm.controlled.summ[3,3],5),
						round(x$lm.controlled.summ[3,4],5),
						"\n"))
	cat(paste(" c   ",
						round(x$lm.direct.summ[2,1],5),
						round(x$lm.direct.summ[2,2],5),
						round(x$lm.direct.summ[2,3],5),
						round(x$lm.direct.summ[2,4],5),
						"\n"))
	cat(paste(" c'  ",
						round(x$lm.controlled.summ[2,1],5),
						round(x$lm.controlled.summ[2,2],5),
						round(x$lm.controlled.summ[2,3],5),
						round(x$lm.controlled.summ[2,4],5),
						"\n"))
}
