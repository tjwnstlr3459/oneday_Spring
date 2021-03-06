CREATE TABLE MEMBER(
    MEMBER_ID   VARCHAR2(20)    PRIMARY KEY,
    MEMBER_PW   VARCHAR2(20)    NOT NULL,
    MEMBER_NAME VARCHAR2(15)    NOT NULL,
    PHONE       CHAR(11)        NOT NULL,
    ADDRESS     VARCHAR2(100),
    GENDER      CHAR(3)
);
INSERT INTO MEMBER VALUES('user01','1234','유저01','01022223333','서울시 영등포구 당산동','남');
INSERT INTO MEMBER VALUES('admin','1234','서준식','01022223333','서울','남');
commit;

SELECT * FROM MEMBER;
delete from member where member_id='admin';
desc member;
--비밀번호 길이 제한 늘리자
alter table member modify member_pw varchar2(100);
delete from member;
commit;



select * from member;




CREATE TABLE NOTICE(
    NOTICE_NO       NUMBER          PRIMARY KEY,
    NOTICE_TITLE    VARCHAR2(300)   NOT NULL,
    NOTICE_CONTENT  VARCHAR2(1000)  NOT NULL,
    NOTICE_WRITER   VARCHAR2(20)    REFERENCES MEMBER(MEMBER_ID) ON DELETE CASCADE,
    NOTICE_DATE     CHAR(10)
);

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL,'제목','내용','user01',TO_CHAR(SYSDATE,'YYYY-MM-DD'));
commit;
CREATE SEQUENCE NOTICE_SEQ;

SELECT * FROM NOTICE;


CREATE TABLE BOARD(
    BOARD_NO        NUMBER PRIMARY KEY,
    BOARD_TITLE     VARCHAR(300)    NOT NULL,
    BOARD_WRITER    VARCHAR(20)     REFERENCES MEMBER(MEMBER_ID) ON DELETE CASCADE,
    BOARD_CONTENT   VARCHAR(1000)   NOT NULL,
    BOARD_DATE      CHAR(10)
);
SELECT * FROM BOARD;
CREATE SEQUENCE BOARD_SEQ;


CREATE TABLE FILE_TBL(
    FILE_NO     NUMBER PRIMARY KEY,
    FILENAME    VARCHAR(300),
    FILEPATH    VARCHAR(300),
    BOARD_NO    NUMBER REFERENCES BOARD(BOARD_NO) ON DELETE CASCADE
);
CREATE SEQUENCE FILE_SEQ;

SELECT * FROM FILE_TBL;



select * from user_tables;

DESC MEMBER;
CREATE TABLE COUPON(
    COUPON_NO       NUMBER      PRIMARY KEY,
    COUPON_NAME     VARCHAR2(300),
    COUPON_CONTENT  VARCHAR2(300),
    MEMBER_ID       VARCHAR2(20) REFERENCES MEMBER(MEMBER_ID) ON DELETE CASCADE,
    START_DATE      CHAR(10),
    END_DATE        CHAR(10),
    STATUS          CHAR(1)
);

CREATE SEQUENCE COUPON_SEQ;

SELECT * FROM MEMBER;
SELECT * FROM COUPON;
UPDATE MEMBER SET COUPON_NO =3 WHERE MEMBER_ID='user03';
INSERT INTO COUPON VALUES(COUPON_SEQ.NEXTVAL,'신규회원 쿠폰','전품목 10%할인','user03','2021-06-01','2021-06-09','Y');
INSERT INTO COUPON VALUES(COUPON_SEQ.NEXTVAL,'신규회원 쿠폰','전품목 10%할인','user04','2021-06-05','2021-06-14','Y');
INSERT INTO COUPON VALUES(COUPON_SEQ.NEXTVAL,'생일쿠폰','전품목 5%할인','user04','2021-05-05','2021-05-14','Y');
commit;

SELECT * FROM COUPON WHERE end_date < TO_CHAR(SYSDATE, 'YYYY-MM-DD') AND STATUS ='Y';

UPDATE coupon SET STATUS = 'N' WHERE coupon_no in(7,8,9,10,11);

ROLLBACK;

UPDATE coupon SET STATUS = 'N' WHERE coupon_no in(SELECT * FROM COUPON WHERE end_date < TO_CHAR(SYSDATE, 'YYYY-MM-DD') AND STATUS ='Y');

commit;
select * from member;

--6월7일
SELECT * FROM COUPON;
UPDATE COUPON SET STATUS='Y' WHERE COUPON_NO IN(1,2,5,6);


CREATE TABLE DIRECT_MESSAGE(
    DM_NO       NUMBER          PRIMARY KEY,
    SENDER      VARCHAR2(20)    REFERENCES  MEMBER(MEMBER_ID) ON DELETE CASCADE,
    RECEIVER    VARCHAR2(20)    REFERENCES  MEMBER(MEMBER_ID) ON DELETE CASCADE,
    DM_CONTENT  VARCHAR2(500)   NOT NULL,
    DM_TIME     DATE,
    STATUS      CHAR(1)     --읽지않음 : N, 읽음 : Y
);
CREATE SEQUENCE DM_SEQ;

INSERT INTO DIRECT_MESSAGE VALUES(DM_SEQ.NEXTVAL,'user01','admin','안녕',to_char(sysdate,'yyyy-mm-dd'),'N');

COMMIT;



