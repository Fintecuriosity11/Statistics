library(vcd)
library(gmodels)
library(MASS)

#mtcars������ �� ����Ȯ��
#32���� �ڵ��� ���� ����(mpg),����(hp),����(wt)���� ������ �ִ�.
str(mtcars)

#pastecs��Ű���� ���Ե� stat.desc()�Լ��� �̿��Ͽ� mtcars�����ͼ¿� ���Ե� 
#�ڵ����� ����, ����, ������ �����跮 Ȯ�� ����
install.packages("pastecs")
library(pastecs)
stat.desc(mtcars[c("mpg","hp","wt")])

install.packages("psych")

#describe()�Լ��� ������ ����(n), ���(mean), ǥ������(sd), ������(median),
#�������(�⺻�� trim=0.1,������ 10%�� ������ ���,trimmed), ������ ��������(median absolute deviation)
#�ּҰ�(min),�ִ밪(max),����(range), �ֵ�(skew),÷��(kurtosis), ǥ������(se) �� ���

library(psych)
describe(mtcars[c("mpg","hp","wt")])

#tapply()���ܺ� �����跮�� ���ϴµ� ����.
#tapply()�Լ��� ù��° �μ����� �������� �����ͼ� ����
#tapply()�Լ��� 2��° �μ�(INDEX)���� ������ ��Ÿ���� ������ ����(����) ����
#tapply()�Լ��� 3��° �μ�(FUN)���� ����ϰ��� �ϴ� ��跮�� ��� �Լ� ����

tapply(survey$Pulse, INDEX = survey$Exer, Fun=mean, na.rm=TRUE)

tapply(survey$Pulse, INDEX = survey$Sex, mean, na.rm=TRUE)

#tapply()�Լ��� ���� ���� ������ ����Ʈ �������� ����
tapply(survey$Pulse, list(survey$Exer, survey$Sex), mean, na.rm=TRUE)

#aggregate()�Լ��� �̿��ص� ������´� �ٸ����� ������ �������
aggregate(survey$Pulse, by=list(Exercise$survey$Exer), FUN=mean, na.rm=TRUE)

#aggregate()�Լ��� FUN�μ����� ����� ���� �Լ��� ��������
#���ܺ��� ������ ����, ���, ǥ������, �ֵ�, ÷������ ���

myStats<-function(x,na.rm=FALSE){
if(na.rm) x <- x[!is.na(x)]
n <-length(x)
mean <-mean(x)
sd<- sd(x)
skew<-sum((x-mean)^3/sd^3)/n
kurt<-sum((x-mean)^4/sd^4)/n-3
return(c(n=n, mean=mean, sd=sd, skewness=skew, kurtosis=kurt))
}

aggregate(survey[c("Pulse","Age")],
list(Exercise=survey$Exer), myStats, na.rm=TRUE)