##�ܺ��� ����ȸ��

#�������� ����y�� �������� x�ϳ��� ����
#y�� x�� ���������� �����Ѵ�.


#������ ���� �� �м�
#4���� x�� y������ �̷���� �ִ�.
data("anscombe")
attach(anscombe)
anscombe

#x1�� y1�� �������� 0.816
cor(x1, y1)

#x2�� y2�� ������ 0.816
cor(x2, y2)

#�׸��� 2*2 ���� ��ġ�� �׸���.
par(mfrow = c(2,2))

#Anscombe �����ͼ��� 4 �������� ��� plot���� �׸���.
plot(x1, y1, main = "Plot 1")
plot(x2, y2, main = "Plot 2")
plot(x3, y3, main = "Plot 3")
plot(x4, y4, main = "Plot 4")