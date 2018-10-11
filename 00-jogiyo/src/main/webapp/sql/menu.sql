create table menu(
   seq varchar2(50),                -- 음식점 관리번호
   menu_group varchar2(40) not null, -- 메인메뉴인지 사이드메뉴인지
   menu_explain varchar2(1000),   --음식 설명
   menu varchar2(50) not null,      --음식 이름
   price number not null,      -- 음식 가격
   imgName varchar2(50) not null,
   addmenu varchar2(50),     -- 추가메뉴(계란,과자,김치)
   addmenu_price number,    -- 그 추가메뉴 가격
   soldout varchar2(10)     -- 품절여부(y/n)(1/0)
);