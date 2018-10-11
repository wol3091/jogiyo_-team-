create table orderlist (
  id varchar2(40),    --주문자 id
  ceo_seq varchar2(50) not null,  --사장 seq
  food varchar2(50) not null,   --음식 이름
  foodQty number not null,      --음식 수량
  foodPrice number not null,        --음식 가격
  delivery_region varchar2(200),    --사용자 배달 지역
  logtime date
);