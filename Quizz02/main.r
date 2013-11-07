rm(list=ls())

## Question 2
#fileURL="http://simplystatistics.tumblr.com/"
#download.file(fileURL,"D:/mydocuments/Documents/Coursera/DataAnalysis/Quizz02/question2.txt")
#simplyStats=readLines("question2.txt",150)
#nbrChar=nchar(simplyStats)
#print(nbrChar[c(2,45,122)])

#fileURL="https://dl.dropbox.com/u/7710864/data/csv_hid/ss06hid.csv"
#download.file(fileURL,"idahoHousing.csv")
idahoHousing=read.table("idahoHousing.csv",sep=",",header=TRUE)

## Question 3
sum(idahoHousing$VAL==24,na.rm=TRUE)

## Question 4

## Question 5
Q51=0
Q52=0
Q53=0
for (i in 1:nrow(idahoHousing)){
	if(!is.na(idahoHousing$BDS[i])&&!is.na(idahoHousing$RMS[i])){
		if (idahoHousing$BDS[i]==3 && idahoHousing$RMS[i]==4){
			Q51=Q51+1
		} else	if (idahoHousing$BDS[i]==2 && idahoHousing$RMS[i]==5){
			Q52=Q52+1
		} else 	if (idahoHousing$BDS[i]==2 && idahoHousing$RMS[i]==7){
			Q53=Q53+1
		}
	}
}


## Question 6
indexes=intersect(which(idahoHousing$AGS==6),which(idahoHousing$ACR==3))

## Question 7
subsetIdahoHousing=idahoHousing[indexes,]
missingMRGX=which(is.na(subsetIdahoHousing$MRGX))
length(missingMRGX)

## Question 8
strsplit(names(idahoHousing),"wgtp")[123]

## Question 9
quantile(idahoHousing$YBL, probs = seq(0, 1),na.rm=TRUE)

## Question 10
#fileURL="https://dl.dropbox.com/u/7710864/data/csv_hid/ss06pid.csv"
#download.file(fileURL,"populationData.csv")
populationData=read.table("populationData.csv",sep=",",header=TRUE)
data=merge(idahoHousing,populationData,by="SERIALNO",all=TRUE)




