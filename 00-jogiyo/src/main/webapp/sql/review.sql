create table review (
  review_seq number primary key,
  id varchar2(40) not null,         -- ������ id
  nickname varchar2(30) not null,   -- �г���
  ceo_seq varchar2(50) not null,     -- ���� seq
  ceoOK varchar2(20),               -- ���� ��� ��/��
  content varchar2(1000) not null,  -- ����
  ceoContent varchar2(1000),       -- ���嵡��
  starpoint varchar2(20) not null,  -- ����
  image varchar2(100),              -- �̹���
  orderlist varchar2(100) not null, -- �ֹ�����
  logtime date not null,            --Ŀ���͸� �ۼ��ð�
  logtimCeo date                    --����� �ۼ��ð�
);

create sequence review_seq nocache nocycle;
