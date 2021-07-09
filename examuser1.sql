CREATE TABLE KH_TBL(
KH_NO NUMBER PRIMARY KEY,
KH_NAME VARCHAR2(100),
ADDR VARCHAR2(300),
FAX VARCHAR2(12)
);
CREATE SEQUENCE KH_SEQ;
INSERT INTO KH_TBL VALUES(KH_SEQ.NEXTVAL,'강남지원','서울특별시 강남구 테헤란로 14길 6','02-562-2378');
INSERT INTO KH_TBL VALUES(KH_SEQ.NEXTVAL,'종로지원','서울특별시 중구 남대문로 120','02-722-0858');
INSERT INTO KH_TBL VALUES(KH_SEQ.NEXTVAL,'당산지원','서울특별시 영등포구 선유동2로 57','02-2163-8560');

SELECT * FROM KH_TBL;
SELECT * FROM FREE;
select * from member;
INSERT INTO FREE VALUES(FREE_SEQ.NEXTVAL,'여러분도 후원해보세요','test01','살면서 처음으로 해봤는데 뿌듯하더라구요ㅎㅎ 여러분도 하시면 분명 복받으실거에요!!',TO_CHAR(SYSDATE,'YYYY-MM-DD'),(NULL),5);
INSERT INTO FREE VALUES(FREE_SEQ.NEXTVAL,'후원상품 퀄리티가 상당히 좋네요!','test77','후원상품을 구입해서 사용해봤는데 생각보다 너무 좋네요',TO_CHAR(SYSDATE,'YYYY-MM-DD'),(NULL),2);
INSERT INTO FREE VALUES(FREE_SEQ.NEXTVAL,'어제 봉사활동 다녀왔거든요!?','test99','어제 연탄나르기도 해보고, 이웃집 도와주러 가봤는데 기분이 조크든요',TO_CHAR(SYSDATE,'YYYY-MM-DD'),(NULL),10);
INSERT INTO FREE VALUES(FREE_SEQ.NEXTVAL,'해외에 나가서 해본일중에!','test119','해외아동 아이들과 밥을 먹는데 왠지모르게 행복하더라구요!ㅎㅎ',TO_CHAR(SYSDATE,'YYYY-MM-DD'),(NULL),7);
INSERT INTO FREE VALUES(FREE_SEQ.NEXTVAL,'제가 생각하는 사람들에게 후원은요?','test9','저는 개인적으로 후원을 알게되서 너무 좋고 재밌던데ㅎㅎ',TO_CHAR(SYSDATE,'YYYY-MM-DD'),(NULL),9);


select * from notice1;

INSERT INTO NOTICE1 VALUES(NOTICE1_SEQ.NEXTVAL,'금일 공지사항 입니다 확인바랍니다','admin1','이번주 후원장소가 변경되었습니다, 서울특별시 신월동17-2 위치입니다!!',TO_CHAR(SYSDATE,'YYYY-MM-DD'),(null),(null));
INSERT INTO NOTICE1 VALUES(NOTICE1_SEQ.NEXTVAL,'다음달 후원장소가 변경되었습니다.','admin1','이번주 후원장소가 변경되었습니다, 서울특별시 신월동17-2 위치입니다!!',TO_CHAR(SYSDATE,'YYYY-MM-DD'),(null),(null));
INSERT INTO NOTICE1 VALUES(NOTICE1_SEQ.NEXTVAL,'이번주 가입회원 목록입니다!','admin1','이번주 후원장소가 변경되었습니다, 서울특별시 신월동17-2 위치입니다!!',TO_CHAR(SYSDATE,'YYYY-MM-DD'),(null),(null));
INSERT INTO NOTICE1 VALUES(NOTICE1_SEQ.NEXTVAL,'굿즈상품 협찬 안내사항','admin1','이번주 후원장소가 변경되었습니다, 서울특별시 신월동17-2 위치입니다!!',TO_CHAR(SYSDATE,'YYYY-MM-DD'),(null),(null));
INSERT INTO NOTICE1 VALUES(NOTICE1_SEQ.NEXTVAL,'이번주 대표 후원장소 안내','admin1','이번주 후원장소가 변경되었습니다, 서울특별시 신월동17-2 위치입니다!!',TO_CHAR(SYSDATE,'YYYY-MM-DD'),(null),(null));


commit;