create table jogiyo_customer(
  id varchar2(40) not null,       --�̸��� ���� ���̵�
  pwd varchar2(30) not null,      -- ��й�ȣ
  nickname varchar2(30) not null, -- �г���
  phone varchar2(11) not null,    --�޴��� ��ȣ
  postcode varchar2(20) not null,   -- ������ȣ
  addr1 varchar2(100) not null,    -- �ּ�1
  addr2 varchar2(100) not null     -- �ּ�2
);