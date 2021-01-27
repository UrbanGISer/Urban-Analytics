library(tidyverse)
library(rDEA)
library(knitr)
options(scipen=999)
df<-data.frame(Store=c("武汉","上海","北京","深圳","成都","广州"),职员数量=c(51,60,43,53,43,44),管理时间=c(38,45,33,43,38,35),礼服销售=c(169,243,173,216,155,169),配件销售=c(119,167,158,138,161,157))
inp<-select(df,"职员数量","管理时间")
out<-select(df,"礼服销售","配件销售")
df
Model<-dea(XREF=inp,YREF=out,X=inp[,] ,Y=out[,],model="input",RTS="constant")
Model
result<-cbind(round(Model$thetaOpt,4),round(Model$lambda,4))
rownames(result)<-df[[1]]
colnames(result)<-c("效率",rownames(result))
kable(result[,])
result 
