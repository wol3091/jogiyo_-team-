create table owner_orderlist (
  seq number,
  id varchar2(40),     --주문자 id
  phone varchar2(11) not null,  --주문자 전화번호
  ceo_seq varchar2(50) not null,  --사장 seq
  food varchar2(1000) not null,   --음식 (음식명,수량 총합이 다 나오게 만든다.)
  total_price number not null,  --총 가격
  delivery_region varchar2(200) not null,    --주문자 주소
  wish varchar2(200),           --주문 요구사항
  review varchar(10) not null,          --리뷰 등록 여부 ()  ==>varchar(10)
  delivery_count number not null,  --배달 횟수 (배달 완료시 0 ==> 주문 받으면)
  logtime date,
  owner_check varchar2(50)
);

create sequence seq nocache nocycle;