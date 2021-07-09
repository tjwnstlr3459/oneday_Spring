
CREATE TABLE NOTICE(
    NOTICE_NO       NUMBER          PRIMARY KEY,    --공지사항 관리 번호
    NOTICE_TITILE   VARCHAR(1000)   NOT NULL,
    NOTICE_WRITER   VARCHAR(20)     REFERENCES MEMBER(MEMBER_ID) ON DELETE CASCADE, --작성자는 회원테이블 참조, 탈퇴시 삭제옵션
    NOTICE_CONTENT  VARCHAR2(4000), --공지사항내용
    NOTICE_DATE     CHAR(10),       --작성일
    FILENAME        VARCHAR2(500),  --사용자가 첨부한 파일 이름
    FILEPATH        VARCHAR2(500)   --실제 서버에 업로드된 파일이름
);
CREATE SEQUENCE NOTICE_SEQ;
SELECT * FROM admin_BOARD;
SELECT * FROM MEMBER;
INSERT INTO NOTICE VALUES(
        NOTICE_SEQ.NEXTVAL, 
        '공지사항' ||NOTICE_SEQ.CURRVAL,
        'admin',
        '내용'||NOTICE_SEQ.CURRVAL,
        TO_CHAR(SYSDATE,'YYYY-MM-DD'),
        NULL,
        NULL
);
ALTER TABLE NOTICE RENAME COLUMN NOTICE_TITILE TO NOTICE_TITLE;

SELECT * FROM NOTICE;
select * from NOTICE where notice_no=1;
    COMMIT;
    
    
    --1페이지 게시물 조회
    SELECT * FROM NOTICE WHERE NOTICE_NO BETWEEN 90 AND 100 ORDER BY DESC;
    
    SELECT * FROM(SELECT ROWNUM AS RNUM, N.*FROM(SELECT * FROM NOTICE ORDER BY NOTICE_NO DESC)N) WHERE RNUM BETWEEN 1 AND 10;
    
    SELECT * FROM NOTICE ORDER BY NOTICE_NO DESC;
    SELECT ROWNUM AS RNUM, N.*FROM(SELECT * FROM NOTICE ORDER BY NOTICE_NO DESC)N;
    
    select count(*) as cnt from notice;
    
----------------자유게시판-----------------------
CREATE TABLE BOARD(
    BOARD_NO        NUMBER          PRIMARY KEY,    --공지사항 관리 번호
    BOARD_TITLE    VARCHAR(1000)   NOT NULL,
    BOARD_WRITER    VARCHAR(20)     REFERENCES MEMBER(MEMBER_ID) ON DELETE CASCADE, --작성자는 회원테이블 참조, 탈퇴시 삭제옵션
    BOARD_CONTENT   VARCHAR2(4000), --공지사항내용
    BOARD_DATE      CHAR(10),       --작성일
    FILENAME        VARCHAR2(500),  --사용자가 첨부한 파일 이름
    FILEPATH        VARCHAR2(500)   --실제 서버에 업로드된 파일이름
);
DROP TABLE BOARD;

ALTER TABLE BOARD RENAME COLUMN BOARD_TITILE TO BOARD_TITLE;

CREATE SEQUENCE BOARD_SEQ;
DROP SEQUENCE BOARD_SEQ;
select * from board;

INSERT INTO BOARD VALUES(
        BOARD_SEQ.NEXTVAL, 
        '자유글' ||BOARD_SEQ.CURRVAL,
        'admin',
        '내용'||BOARD_SEQ.CURRVAL,
        TO_CHAR(SYSDATE,'YYYY-MM-DD'),
        NULL,
        NULL
);

SELECT * FROM(SELECT ROWNUM AS RNUM, N.*FROM(SELECT * FROM BOARD ORDER BY BOARD_NO DESC)N) WHERE RNUM BETWEEN 1 AND 10;
COMMIT;
    
CREATE TABLE NOTICE_COMMENT(
    NC_NO       NUMBER          PRIMARY KEY,
    NC_LEVEL    NUMBER,         --댓글인지/대댓글인지 구분
    NC_WRITER   VARCHAR2(20)    REFERENCES MEMBER(MEMBER_ID) ON DELETE CASCADE, --댓글 작성자
    NC_CONTENT  VARCHAR2(1000)  NOT NULL,
    NC_DATE     CHAR(10),
    NOTICE_REF  NUMBER          REFERENCES NOTICE(NOTICE_NO) ON DELETE CASCADE, --어떤 게시물의 댓글인지 구분하기위한 컬럼
    NC_REF      NUMBER          REFERENCES NOTICE_COMMENT(NC_NO) ON DELETE CASCADE --어떤 댓글의 댓글인지 구분하기위한 컬럼
);
--nc_ref의 value는 0이 설정이라서 오류
CREATE SEQUENCE NO_SEQ;

select * from NOTICE_COMMENT;

update notice_comment set nc_content='수정db' where nc_no=1;
    
select * from member;
    
commit;
    
------어드민
CREATE USER examuser IDENTIFIED BY 1234;

GRANT CONNECT,RESOURCE TO examuser;
    
CREATE TABLE PHOTO(
    PHOTO_NO        NUMBER      PRIMARY KEY,
    PHOTO_WRITER    VARCHAR2(20)    REFERENCES MEMBER(MEMBER_ID),
    PHOTO_CONTENT   VARCHAR2(1000)  NOT NULL,
    FILEPATH    VARCHAR2(300),
    PHOTO_DATE CHAR(10)
);
CREATE SEQUENCE PHOTO_SEQ;
    
    

    
    
    
    
    
    
    
    
    
    
    