mediation<-function(formula, data){

	charform<-strsplit(as.character.formula(formula), " ~ ")[[1]]

	if(
		length(charform)!=3
	){
		stop("Formula not of the form Y~M~X")
	}

	if(
		FALSE %in% (charform %in% colnames(data))
	){
		stop("Specified variables do not all exist in specified dataset")
	}

	formula1<-as.formula(paste(charform[1],"~",charform[3]))
	formula2<-as.formula(paste(charform[2],"~",charform[3]))
	formula3<-as.formula(paste(charform[1],"~",charform[3],"+",charform[2]))

	lm.direct<-lm(formula1, data=data)
	lm.mediator<-lm(formula2, data=data)
	lm.controlled<-lm(formula3, data=data)

	lm.direct.summ<-summary(lm.direct)$coef
	lm.mediator.summ<-summary(lm.mediator)$coef
	lm.controlled.summ<-summary(lm.controlled)$coef

	obj<-list(lm.direct=lm.direct,
						lm.mediator=lm.mediator,
						lm.controlled=lm.controlled,
						lm.direct.summ=lm.direct.summ,
						lm.mediator.summ=lm.mediator.summ,
						lm.controlled.summ=lm.controlled.summ,
						charform=charform)
	class(obj)<-"mediation"
	return(obj)
}
