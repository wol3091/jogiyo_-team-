create table menu(
   seq varchar2(50),                -- ������ ������ȣ
   menu_group varchar2(40) not null, -- ���θ޴����� ���̵�޴�����
   menu_explain varchar2(1000),   --���� ����
   menu varchar2(50) not null,      --���� �̸�
   price number not null,      -- ���� ����
   imgName varchar2(50) not null,
   addmenu varchar2(50),     -- �߰��޴�(���,����,��ġ)
   addmenu_price number,    -- �� �߰��޴� ����
   soldout varchar2(10)     -- ǰ������(y/n)(1/0)
);