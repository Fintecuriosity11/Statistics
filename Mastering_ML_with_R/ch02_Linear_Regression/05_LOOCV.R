### ���� ���� ��� (cross validation)
## ���� ���ð� �׽�Ʈ�� ȿ������ ��� (������ �л� ���� ������ ���δ�.)

## Leave-One-Out-Cross-Validation (LOOCV)

#���� ���������� ���� LOOCV ���� ����
#���� ���� ������(Prediction Error Sum of Squares, PRESS)�̶�� ��跮�� �˻��ϰ� ���� ���� Press�� ���� ������ ������.
#R�� MPV ��Ű���� PRESS ��跮�� ���� ��� ����

install.packages("MPV")
library(MPV)

PRESS(best.fit)

PRESS(fit.2)


#���� ���� ������ ��跮�� ���� best.fit ������ ������ �� �ִ�.
#������ �����ϸ� ������ ���� ���� �����̴�.

PRESS.best = sum((resid(best.fit)/(1- hatvalues(best.fit)))^2)

PRESS.fit.2 = sum((resid(fit.2)/(1- hatvalues(fit.2)))^2)


#Y=XB+E

#Y�� ������ �ʰ�, X�� �Է°��� ���, B�� ���, E�� ���� ���� ��Ÿ����.
#�� ���������� B�� �ظ� ���Ѵ�. ��������� ȸ�� ������ ��Ʈ ���(hat matrix)�� ���Ѵ�.

#�� ����� ���� �������� ���� ���� ���(mapping)�Ѵ�. 
#�̷��� ��� ��� ��� ����(projection)�̶�� ���� ����ϱ⵵ �Ѵ�.

#���, ��Ʈ ����� ���� ������ Ư���� �������� ������� �ݿ��Ѵ�.
#���� ���� ��������(1-��Ʈ��)���� ������ ���� ����(LOOCV)���� ���� �ȴ�.

PRESS.best

PRESS.fit.2