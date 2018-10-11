create table owner_request(
  preseq number primary key,
  license_num1 varchar2(30) not null,      -- ����� ��ȣ
  license_num2 varchar2(30) not null,      -- ����� ��ȣ
  license_num3 varchar2(30) not null,      -- ����� ��ȣ
  registration varchar2(400) not null,     -- ����ڵ����
  business_register varchar2(400) not null,  -- ��� �Ű���
  register_name varchar2(20) not null,    -- ����ָ�
  business_phone1 varchar2(20) not null,  -- ����� �޴��� ��ȣ
  business_phone2 varchar2(20) not null,  -- ����� �޴��� ��ȣ
  business_phone3 varchar2(20) not null,  -- ����� �޴��� ��ȣ
  restaurant_name varchar2(50) not null,  -- ������ �̸�
  restaurant_phone1 varchar2(40) not null, -- ������ ��ȭ��ȣ 
  restaurant_phone2 varchar2(40) not null, -- ������ ��ȭ��ȣ 
  restaurant_phone3 varchar2(40) not null, -- ������ ��ȭ��ȣ
  restaurant_address1 varchar2(200) not null, --������ �ּ�(�����ȣ)
  restaurant_address2 varchar2(200) not null, --������ �ּ�(���θ��ּ�)
  restaurant_address3 varchar2(200) not null, --������ �ּ�(�����ּ�)
  restaurant_address4 varchar2(200) not null, --������ �ּ�(��)
  category_menu varchar2(400) not null,      -- ���� ī�װ�
  delivery_option varchar2(50) not null,    -- ��� ���� ���� 
  yak varchar2(30) not null,                -- �̿���
  somename varchar2(400) not null,           -- ������ �ΰ�
  access1 varchar2(30) not null,            -- ������ ����
  temp_close varchar2(20) not null,         -- �ӽÿ���� ����
  seq varchar2(50) ,                  -- ������ ������ȣ
  original varchar2(3000),                  -- ������ 
  lower_price varchar(20),                  -- �ּ��ֹ��ݾ� - ����� ����Ʈ list �޴�
  delivery_region varchar(200),             -- ��ް������� ����� ����Ʈ - ��������� - �����
  money_method varchar(200),                 -- ���� ����   ����� ����Ʈ - ����
  weekday_start_H varchar2(30),             --���� ���� Hours
  weekday_start_M varchar2(30),             --���� ���� Minute
  weekday_end_H varchar2(30),               --���� ���� Hours
  weekday_end_M varchar2(30),               --���� ���� Minute
  saturday_start_H varchar2(30),            --����� ���� Hours
  saturday_start_M varchar2(30),            --����� ���� Minute
  saturday_end_H varchar2(30),              --����� ���� Hours
  saturday_end_M varchar2(30),              --����� ���� Minute
  sunday_start_H varchar2(30),              --�Ͽ��� ���� Hours
  sunday_start_M varchar2(30),              --�Ͽ��� ���� Minute
  sunday_end_H varchar2(30),                --�Ͽ��� ���� Hours
  sunday_end_M varchar2(30),                --�Ͽ��� ���� Minute
  delivery_cost number,                      --��޷�
  delivery_time varchar2(100)               -- ��޼ҿ�ð�
);

create sequence seq_owner_request nocache nocycle; 