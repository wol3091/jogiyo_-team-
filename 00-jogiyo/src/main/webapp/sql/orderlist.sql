create table orderlist (
  id varchar2(40),    --�ֹ��� id
  ceo_seq varchar2(50) not null,  --���� seq
  food varchar2(50) not null,   --���� �̸�
  foodQty number not null,      --���� ����
  foodPrice number not null,        --���� ����
  delivery_region varchar2(200),    --����� ��� ����
  logtime date
);