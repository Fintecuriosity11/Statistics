# gmodels package installation
install.packages("gmodels")

library(vcd)
library(gmodels)

crosstable(Arthritis$Improved, Arthritis$Treatment, prop.chisq=FALSE,
           + dnn=c("Improved", "Treatment"))

#������ ������ 3���̻� �������� ���������̺�(multidimensional table)����
#2���� ���̺��� ����ߴ� table()�Լ��� xtabs()�Լ� ��� ������ ���̺��� ����

multtab <- with(Arthritis, table(Improved, Sex, Treatment))
multtab <- xtabs(~ Improved + Sex + Treatment, data=Arthritis)
multtab

#fttable() �Լ��� ������ ���̺��� ���� �ܼ��ϰ� �������� ���·� ���
ftable(multtab)

#row.vars�μ��� col.vars�μ��� �̿��Ͽ� ���� ���� ��ġ�Ǵ� ���� ����
ftable(multtab, row.vars = c(2,3))

#ftable()�� table()��ü�� �μ��� ���� ���� �ְ� ������������(����Ʈ)�� ���� ���̺� ����
ftable(Arthritis[c("Improved", "Sex", "Treatment")], row.vars = c(2,3))

#margin.table(), prop.table(), addmargins()� 3���� �̻����� Ȯ�� ����
#���� ���, xtabs()�� ���ķ� ~Improved+Sex+Treatment�� �̿��Ͽ� ���̺��� ������ ���
#Improved�� ����1�� �����ǰ�, Sex�� ����2�� ����, Treatment�� ����3�� ����
margin.table(multtab,1)

margin.table(multtab,2)

margin.table(multtab,3)

#Improved X Treatement �������� ���� ���� ���. �ε����� �־����� ���� SEX�� ���� �ջ�
margin.table(multtab, c(1,3))

#���� Sex X Treatment ���տ� ���� Improved�� 3������ ���� ǥ��
ftable(prop.table(multtab, c(2,3)))

#��µ� ���̺��� ���� �ž� ó���� ���� ������ 59.3%�� ������ ���� ����(marked)
#������ �ݸ� ������ ��쿡�� �׷��� ������ 35.7%�� ��ģ��.
#prop.table()���� ȣ����� ���� ������ ���� �ջ��ϸ� ������ ���� 1�̵ȴ�.
ftable(addmargins(prop.table(multtab, c(2,3)),1))