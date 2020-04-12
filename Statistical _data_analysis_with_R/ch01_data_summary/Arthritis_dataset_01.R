# vcd package installation
# ������ ������ �ð�ȭ�� �м��� ���� ��

install.packages("vcd")
library(vcd)

# vcd ��Ű���� ���Ե� Arthritis �����ͼ����� ����ǥ(cross-tabulation) ����

# ����ǥ�� �� ������ ���ֺ� ���� �󵵼��� �����Ͽ� �ۼ��� 2���� ���̺�
# �� ������ ���� ���� ���踦 �ľ��ϰ��� �� �� ������

str(Arthritis)

crosstab <-table(Arthritis$Improved, Arthritis$Treatment)
crosstab

# Treatment ������ ������ �����μ� ���������� ��Ÿ���� placebo��
# �ž� ������ �ǹ��ϴ� Treated 2���� ������ ���´�.

crosstab["Market", "Treated"]

#xtabs()�Լ��� ���ķ� �������� ��� ���� ������ ����.
#���ķ��� ����(~�� ������)������ ������ ���� ������ +�� �����Ͽ� ����
#��� ���� �����Ǵ� ���� �̸��� �Բ� ��µȴ�.
#���ķ� ������ ����� ���� data�μ��� �����ͼ��� ����

crosstab<-xtabs(~Improved + Treatment, data=Arthritis)
crosstab

#margin.table()�� prop.table()�� �̿��Ͽ� 
#����ǥ�� ��� ���� ���� ���հ� ������ ���
#���� �հ� ���� ������ ����ϱ� ���ؼ��� ������ ���� �μ��� margin=1�� ����
#�μ� margin=1�� table()�Լ��� �����Ǵ� 1��° ����(����ǥ�� ��)�� ����

margin.table(crosstab, margin=1)
prop.table(crosstab, 1)

margin.table(crosstab, margin=2)
prop.table(crosstab,2)

prop.table(crosstab)

#����ǥ�� ������� ������ ���Խ�Ű���� addmargins() ���
#addmargins()�� margin=1�� �����ϸ� ���� ��(���� ������ ��� ���� �հ���) ����
#����ǥ �̿ܿ� �ƹ��� �߰��μ��� �������� ������ 2 ���� ��ο� ���� ���� ��� �� ����

addmargins(crosstab, margin = 1)

addmargins(crosstab, margin = 2)

addmargins(crosstab)

#addmargins() �����ϸ� 100%�� ��Ÿ����  ���� ���� ���� �ĺ��� �� 
#�־ ����ǥ�� �ؼ��� ������ �ȴ�.

addmargins(prop.table(crosstab,2),1)

addmargins(prop.table(crosstab,1),2)
