--���̵� �޴� ���̺�
create table sideMenu(
   seq varchar2(50),  --��� �޴�����
   menu_group varchar2(40) not null,    -- ���θ޴����� ���̵�޴�����
   menu_explain varchar2(1000), --���� ����  
   menu varchar2(50) not null,      --���� �̸�
   price number not null,      -- ���� ����
   imgName varchar2(50) not null, --���� ����
   soldout varchar2(30)     -- ǰ������(y/n)(1/0)
);