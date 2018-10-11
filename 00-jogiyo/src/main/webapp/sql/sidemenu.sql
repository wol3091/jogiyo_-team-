--사이드 메뉴 테이블
create table sideMenu(
   seq varchar2(50),  --어떤집 메뉴인지
   menu_group varchar2(40) not null,    -- 메인메뉴인지 사이드메뉴인지
   menu_explain varchar2(1000), --음식 설명  
   menu varchar2(50) not null,      --음식 이름
   price number not null,      -- 음식 가격
   imgName varchar2(50) not null, --음식 사진
   soldout varchar2(30)     -- 품절여부(y/n)(1/0)
);