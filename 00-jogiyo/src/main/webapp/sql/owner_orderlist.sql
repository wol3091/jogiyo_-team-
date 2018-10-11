create table owner_orderlist (
  seq number,
  id varchar2(40),     --�ֹ��� id
  phone varchar2(11) not null,  --�ֹ��� ��ȭ��ȣ
  ceo_seq varchar2(50) not null,  --���� seq
  food varchar2(1000) not null,   --���� (���ĸ�,���� ������ �� ������ �����.)
  total_price number not null,  --�� ����
  delivery_region varchar2(200) not null,    --�ֹ��� �ּ�
  wish varchar2(200),           --�ֹ� �䱸����
  review varchar(10) not null,          --���� ��� ���� ()  ==>varchar(10)
  delivery_count number not null,  --��� Ƚ�� (��� �Ϸ�� 0 ==> �ֹ� ������)
  logtime date,
  owner_check varchar2(50)
);

create sequence seq nocache nocycle;