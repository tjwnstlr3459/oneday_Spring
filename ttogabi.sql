CREATE TABLE MEMBER(
    USER_NO            INT               NOT NULL, 
    EMAIL              VARCHAR2(40)      NOT NULL, 
    USER_PW            VARCHAR2(30)      NOT NULL, 
    USER_NICK          VARCHAR2(40)      UNIQUE, 
    GENDER             CHAR(3)           NOT NULL, 
    AGE                INT               NOT NULL, 
    ADDRESS            VARCHAR2(1000)    NOT NULL, 
    INTRODUCTION       VARCHAR2(2000)    NOT NULL, 
    INTEREST1          VARCHAR2(20)      NOT NULL, 
    INTEREST2          VARCHAR2(20)      NOT NULL, 
    INTEREST3          VARCHAR2(20)      NOT NULL, 
    FILENAME           VARCHAR2(500)     NULL, 
    USER_PIC           VARCHAR2(500)     NULL, 
    USER_PATH          CHAR(10)          NOT NULL, 
    VIOLATION_COUNT    INT               NOT NULL, 
    CONNECTION         CHAR(1)           NOT NULL, 
    USER_GRADE         NUMBER            NOT NULL, 
    RECENT_LOGIN       CHAR(10)          NOT NULL, 
    CONSTRAINT PK_ PRIMARY KEY (USER_NO)
);
--달력 테이블 생성
CREATE TABLE CALENDAR(
    CAL_NO       INT               NOT NULL, 
    CLUB_NO      INT               NOT NULL, 
    CAL_TITLE    VARCHAR2(1000)    NOT NULL, 
    CAL_BACK     VARCHAR2(20)      NULL, 
    CAL_FONT     VARCHAR2(20)      NULL, 
    CAL_START    CHAR(10)          NOT NULL, 
    CAL_END      CHAR(10)          NULL, 
     PRIMARY KEY (CAL_NO)
);
CREATE SEQUENCE CAL_SEQ;




CREATE SEQUENCE MEMBER_SEQ;
INSERT INTO MEMBER VALUES(
    MEMBER_SEQ.NEXTVAL,
    'tjwnstlr3459@naver.com',
    '1234',
    '바람돌이',
    'M',
    '22',
    '서울',
    '안녕하세요 서준식입니다.',
    '#여행',
    '#사교',
    '#싸움',
    null,
    null,
    TO_CHAR(SYSDATE,'YYYY-MM-DD'),
    0,
    'N',
    3,
    TO_CHAR(SYSDATE,'YYYY-MM-DD'));
commit;
SELECT * FROM MEMBER;
--DROP TABLE MEMBER;
--DROP SEQUENCE MEMBER_SEQ;
COMMIT;
    
CREATE TABLE CATEGORY(
CG_NO       NUMBER PRIMARY KEY,
CG_NAME     VARCHAR2(20) UNIQUE,
CG_KINDS    NUMBER NOT NULL
);


CREATE SEQUENCE CG_NO_SEQ;
CREATE SEQUENCE CG_KINDS_SEQ;

INSERT INTO CATEGORY VALUES(CG_NO_SEQ.NEXTVAL,'스포츠',CG_KINDS_SEQ.NEXTVAL);

SELECT*FROM CATEGORY;

CREATE TABLE CLUB(
    CLUB_NO     NUMBER PRIMARY KEY,
    CLUB_CG     VARCHAR2(20) REFERENCES CATEGORY(CG_NAME) ON DELETE CASCADE,
    CLUB_NAME   VARCHAR2(1000) UNIQUE,
    CLUB_INTRO  VARCHAR2(2000),
    CLUB_OPENER VARCHAR2(40) NOT NULL,
    CLUB_PIC    VARCHAR2(500),
    CLUB_PATH   VARCHAR2(500),
    CLUB_GRADE  NUMBER  NOT NULL,
    CLUB_DATE   CHAR(10) NOT NULL,
    ACTIVITY_DATE   CHAR(10) NOT NULL,
    ISPUBLIC    CHAR(1)NOT NULL
);
DROP TABLE CLUB;

CREATE SEQUENCE CLUB_NO_SEQ;
CREATE SEQUENCE CLUB_GRADE_SEQ;

INSERT INTO CLUB VALUES(CLUB_NO_SEQ.NEXTVAL,
'스포츠','스포츠동호회','스포츠를 사랑하는모임',
'유저01','NULL','NULL',CLUB_GRADE_SEQ.NEXTVAL,'6월 17일','6월 17일','Y');

CREATE TABLE CLUB_MEMBER(
    CM_NO   NUMBER  PRIMARY KEY,
    CLUB_NAME   VARCHAR2(1000) UNIQUE REFERENCES CLUB(CLUB_NAME) ON DELETE CASCADE,
    CLUB_NICK   VARCHAR2(40) UNIQUE REFERENCES MEMBER(USER_NICK) ON DELETE CASCADE,
    ACCEPT      CHAR(1) NOT NULL,
    CM_DATE     CHAR(10) NOT NULL
);
CREATE SEQUENCE CM_NO_SEQ;
DROP TABLE CLUB_MEMBER;
DROP SEQUENCE CM_NO_SEQ;

INSERT INTO CLUB_MEMBER VALUES(CLUB_NO_SEQ.NEXTVAL,
'스포츠동호회','바람돌이','Y','6월 17일');

CREATE TABLE INVITE(
    INVITE_NO   NUMBER  PRIMARY KEY,
    INVITE_CLUB   VARCHAR2(1000) REFERENCES CLUB_MEMBER(CLUB_NAME) ON DELETE CASCADE,
    INVITER       VARCHAR2(40) REFERENCES CLUB_MEMBER(CLUB_NICK) ON DELETE CASCADE,
    RECEIVER      VARCHAR2(40) REFERENCES MEMBER(USER_NICK) ON DELETE CASCADE
);

SELECT * FROM MEMBER;
SELECT * FROM CLUB;
SELECT * FROM CLUB_BOARD;

INSERT INTO CATEGORY VALUES(
    CG_SEQ.NEXTVAL,
    '음악',
    1
);
SELECT * FROM CATEGORY;
SELECT * FROM CLUB;
INSERT INTO CLUB_BOARD VALUES(
    CB_SEQ.NEXTVAL,
    42,
    4,
    '유저3',
    '유저3의 제목',
    '차트출력을 해보자',
    null,
    null,
    1,
    1,
    to_char(sysdate,'yyyy-mm-dd')
);
COMMIT;
insert into club_board values(
    CB_SEQ.NEXTVAL,
    6,
    5,
    '유저3',
    '노래 참 좋당',
    '헤이즈-헤픈인연 들어보세요',
    null,
    null,
    1,
    1,
    to_char(sysdate,'yyyy-mm-dd')
    );

COMMIT;
select * from CATEGORY;

SELECT * FROM CLUB_BOARD;
select * from USER_SEQUENCES; -- 쿼리명 확인

DESC MEMBER;
SELECT * FROM MEMBER;

SELECT MEMBER_NICK FROM MEMBER WHERE MEMBER_NICK='유저3'; --유저3찾기
SELECT * FROM CLUB_MEMBER WHERE CLUB_NICK='유저3'; --클럽멤버에 유저3찾기

--클럽멤버의 유저3이 속한 모임넘버 출력
SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='유저3';
SELECT * FROM CLUB;
SELECT * FROM CLUB_MEMBER;
INSERT INTO CLUB_MEMBER VALUES(CM_SEQ.NEXTVAL,6,'유저3',TO_CHAR(SYSDATE,'YYYY-MM-DD'));
COMMIT;

--클럽에 유저3인 속한 클럽정보 출력
SELECT * FROM CLUB WHERE CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK=(SELECT MEMBER_NICK FROM MEMBER WHERE MEMBER_NICK='유저3'));
SELECT * FROM CLUB WHERE CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='유저3');

SELECT COUNT(*) FROM CLUB_BOARD WHERE BOARD_WRITER='유저3';

--속한 클럽의 게시물 불러오기
SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as clubMember,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
FROM CLUB_BOARD A,CLUB C 
WHERE C.CLUB_NO = A.CLUB_NO 
AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='유저3') ORDER BY A.ENROLL_DATE DESC)P) WHERE RNUM BETWEEN 1 AND 5;

--속한 클럽의 게시물이 두배로 나오는 이유알아내자
SELECT * FROM CLUB_BOARD A,CLUB C 
WHERE C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='유저3');

--클럽 게시물보기
SELECT * FROM CLUB_BOARD;
SELECT * FROM CLUB;

SELECT * FROM MEMBER;

DESC CLUB_BOARD;
select * from member;
select * from club;
select * from club_board;
SELECT * FROM CATEGORY;
UPDATE MEMBER SET HOBBY1='음악', HOBBY2='스포츠',HOBBY3='영화';
SELECT * FROM CLUB;
COMMIT;

SELECT 
    count(*)
FROM CLUB_BOARD A,CLUB C 
WHERE C.CLUB_NO = A.CLUB_NO 
AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='유저3');

SELECT COUNT(*) FROM CLUB_BOARD WHERE BOARD_WRITER='유저3';

--최신게시물 번호 출력
select max(board_no) from club_board;


SELECT * FROM MEMBER;
SELECT * FROM CATEGORY;

(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as boardWriter,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
	FROM CLUB_BOARD A,CLUB C 
	WHERE C.CLUB_NO = A.CLUB_NO 
	AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='유저3') ORDER BY A.ENROLL_DATE DESC)P) WHERE RNUM BETWEEN 1 AND 5;

SELECT 
    count(*)
FROM CLUB_BOARD A,CLUB C 
WHERE C.CLUB_NO = A.CLUB_NO 
AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='유저3');


--공지사항 게시물 최신순 나열과 10개씩 끊어서
SELECT
    AB_NO AS abNo,
	ab_cg as abCg,
	ab_writer as abWriter,
	ab_Title as abTitle,
	ab_content as abContent,
	fileName,
	filePath,
	enroll_date as enrollDate
FROM
(SELECT rOWNUM AS RNUM, N.*FROM
(SELECT * FROM BOARD where ab_cg=14 ORDER BY AB_NO DESC)N) WHERE RNUM BETWEEN 1 AND 10;

SELECT 
   BOARD_NO as boardNo,
   CLUB_NO as clubNo,
   BOARD_CG as boardCg,
   BOARD_WRITER as boardWriter,
   BOARD_TITLE as boardTitle,
   BOARD_CONTENT as boardContent,
   FILENAME,
   FILEPATH,
   BOARD_VIEWS as boardViews,
   BOARD_GOOD as boardGood,
   ENROLL_DATE as enrollDate
FROM
(SELECT rOWNUM AS RNUM, N.*FROM
(SELECT * FROM club_board ORDER BY CLUB_NO DESC)N) WHERE CLUB_NO=6 AND RNUM BETWEEN 1 AND 5;

from club_board where club_no=6)p* and from rnum between 1 and 5;


SELECT count(*) FROM ADMIN_BOARD;

--보드 전체 게시글 출력
SELECT
	AB_NO AS abNo,
	ab_cg as abCg,
	ab_writer as abWriter,
	ab_Title as abTitle,
	ab_content as abContent,
	fileName,
	filePath,
	enroll_date as enrollDate
FROM BOARD;

SELECT * FROM CATEGORY;

DESC BOARD;
--BOARD 게시글 추가
INSERT INTO BOARD VALUES(
    AB_SEQ.NEXTVAL,
    3,
    '유저3',
    '신고할게 있습니다.',
    '제가 생각하는 나쁜놈은~~',
    NULL,
    NULL,
    TO_CHAR(SYSDATE,'YYYY-MM-DD'));
COMMIT;
SELECT count(*) FROM BOARD WHERE AB_CG=14;
SELECT * FROM BOARD;
SELECT
    AB_NO AS abNo,
	ab_cg as abCg,
	ab_writer as abWriter,
	ab_Title as abTitle,
	ab_content as abContent,
	fileName,
	filePath,
	enroll_date as enrollDate
FROM
(SELECT rOWNUM AS RNUM, N.*FROM
(SELECT * FROM BOARD ORDER BY AB_NO DESC)N)WHERE RNUM BETWEEN 1 AND 10;

SELECT * FROM CLUB_BOARD;

--클럽게시물
SELECT * FROM CLUB_BOARD WHERE BOARD_CG=14;
--카테고리
SELECT * FROM CATEGORY;

--댓글넣어보기
INSERT INTO ANSWER VALUES(
    ANSWER_SEQ.NEXTVAL,
    59,
    '유저3',
    '시켜줘 너의 명예소방관',
    NULL,
    NULL,
    TO_CHAR(SYSDATE,'YYYY-MM-DD'),
'N');
COMMIT;

SELECT * FROM ANSWER;

SELECT * FROM USER_SEQUENCES; -- 시퀀스 종류 찾기

--해당 게시물 댓글들 찾기
SELECT
    a.AN_NO AS anNo,
    a.ab_no as abNo,
    a.an_writer as anWriter,
    a.an_Content as anContent,
    a.filename as fileName,
    a.filepath as filePath,
    a.enroll_date as enrollDate,
    a.an_status as anStatus,
    b.member_nick as memberNik,
    b.filepath as filepath
FROM ANSWER a,member b WHERE a.an_writer = b.member_nick and a.AB_NO=59;

SELECT * FROM MEMBER;


SELECT 
    count(*)
FROM CLUB_BOARD A,CLUB C 
WHERE C.CLUB_NO = A.CLUB_NO 
AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='유저3');

--특정 공지게시물 내 댓글들 출력
SELECT
    a.AN_NO AS anNo,
    a.ab_no as abNo,
    a.an_writer as anWriter,
    a.an_Content as anContent,
    a.filename as fileName,
    a.filepath as filePath,
    a.enroll_date as enrollDate,
    a.an_status as anStatus,
    b.member_nick as memberNick,
    b.filepath as filepath
FROM ANSWER a,member b WHERE a.an_writer = b.member_nick and a.AB_NO=59;
select * from answer;
select * from member;

--날짜 검색 조건
create table test1(
    tt char(10)
);
drop table test1;
insert into test1 values(to_char(sysdate-7,'YYYY-MM-DD'));
select * from test1;

select * From test1 where tt between to_char(sysdate-7,'YYYY-MM-DD') and to_char(sysdate,'YYYY-MM-DD');

--유저 프로필 사진 업데이트
update member set filename='man2.png', filepath='man2.png' where filename=null;
select * from member;
commit;

INSERT INTO ANSWER VALUES(
    
);
--특정 게시물에 있는 총 댓글과 댓글작성자의 정보
SELECT
    a.AN_NO AS anNo,
    a.ab_no as abNo,
    a.an_writer as anWriter,
    a.an_Content as anContent,
    a.filename as fileName,
    a.filepath as filePath,
    a.enroll_date as enrollDate,
    a.an_status as anStatus,
    b.member_nick as memberNick,
    b.filepath as pic
FROM ANSWER a,member b WHERE a.an_writer = b.member_nick and a.AB_NO=59;

SELECT * FROM USER_SEQUENCES;

--공지사항 등록
INSERT INTO BOARD VALUES(
    AB_SEQ.NEXTVAL(),

);
SELECT * FROM CATEGORY;
SELECT * FROM BOARD;
--공지 최신게시물 번호알아내기
SELECT MAX(AB_NO) FROM BOARD; 

	INSERT INTO BOARD VALUES(
		AB_SEQ.NEXTVAL(),
		14,
		'admin1',
		'dd',
		'ww',
		null,
		null,
to_char(sysdate,'yyyy-mm-dd'));


SELECT 
   BOARD_NO as boardNo,
   CLUB_NO as clubNo,
   BOARD_CG as boardCg,
   BOARD_WRITER as boardWriter,
   BOARD_TITLE as boardTitle,
   BOARD_CONTENT as boardContent,
   FILENAME,
   FILEPATH,
   BOARD_VIEWS as boardViews,
   BOARD_GOOD as boardGood,
   ENROLL_DATE as enrollDate
FROM
(SELECT ROWNUM AS RNUM, N.*FROM
(SELECT * FROM club_board ORDER BY CLUB_NO DESC)N) WHERE CLUB_NO=2 AND RNUM BETWEEN 1 AND 10;

SELECT * FROM CATEGORY;

select * from board;
delete from board where ab_no=83;
commit;

UPDATE BOARD SET ab_Title='제목수정', ab_content='내용수정' where ab_no=103;
commit;

--유저가 속한 모든 클럽정보 출력
select * from club;
	SELECT
		CLUB_NO as clubNo,
		CLUB_CG  as clubCg,            
		CLUB_NAME  as clubName,
		CLUB_INTRO  as clubIntro,
		CLUB_OPENER  as clubOpener,        
		FILENAME,  
		FILEPATH, 
		CLUB_RATING as clubRating,
		ISPUBLIC,
		ENROLL_DATE as enrollDate,
		LAST_DATE as lastDate,
		WARNING_COUNT as warningCount
	FROM CLUB WHERE 
	CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK= '유저3');
    
select * from club;

--클럽에 멤버 추가
insert into club_member values(
    cm_seq.nextval,
    42,
    '유저3',
    to_char(sysdate,'yyyy-mm-dd')
);

commit;
select * from user_sequences;

	SELECT
		CLUB_NO as clubNo,
		CLUB_CG  as clubCg,            
		CLUB_NAME  as clubName,
		CLUB_INTRO  as clubIntro,
		CLUB_OPENER  as clubOpener,        
		fileName,  
		filePath, 
		CLUB_RATING as clubRating,
		ISPUBLIC,
		ENROLL_DATE as enrollDate,
		LAST_DATE as lastDate,
		WARNING_COUNT as warningCount
	FROM CLUB WHERE 
	CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='유저3');


select * from club_board;
commit;
select * from club;
select * from member;
select * from category;
select * from club_member;

insert into club_board values(
    CB_SEQ.NEXTVAL,
    42,
    4,
    '유저3',
    '스포츠 게시물',
    '스포츠 내용이다',
    null,
    null,
    0,
    0,
to_char(sysdate,'yyyy-mm-dd'));
commit;
select * from club where club_no=42;

select * from club_board;

--해당클럽에 게시물 넣어주기
INSERT INTO CLUB_BOARD VALUES(
    CB_SEQ.NEXTVAL,
    1,
    5,
    '유저3',
    '유저3의 제목',
    '자동 스크롤 더보기 테스트',
    null,
    null,
    1,
    1,
    to_char(sysdate,'yyyy-mm-dd')
);

select * from club_board;


--오류가 났었음
--처음에 클럽넘버가 38밖에 없는 게시물중에서 rnum between으로 찾았을땐 게시물 출력이 됬지만
--42번을 가진 다른 게시물들이 rnum을 포함하기때문에 38번만 찾는 우리한테는 보이지 않았던것이다!
--그래서 board_no=38을 바깥이 아닌 안쪽에 미리 찾은 다음에, 바깥에서 rnum으로 between으로 찾는것이다
SELECT 
rnum,
   BOARD_NO as boardNo,
   CLUB_NO as clubNo,
   BOARD_CG as boardCg,
   BOARD_WRITER as boardWriter,
   BOARD_TITLE as boardTitle,
   BOARD_CONTENT as boardContent,
   FILENAME,
   FILEPATH,
   BOARD_VIEWS as boardViews,
   BOARD_GOOD as boardGood,
   ENROLL_DATE as enrollDate
FROM
(SELECT ROWNUM AS RNUM, N.* FROM
(SELECT * FROM club_board WHERE CLUB_NO=38 ORDER BY CLUB_NO DESC)N) where RNUM BETWEEN 1 AND 3;;

 and 

select * from  
(
SELECT ROWNUM AS RNUM, N.*FROM
(SELECT * FROM club_board ORDER BY CLUB_NO DESC)N
) where (rnum between 1 and 3);


--날짜별 포스트 출력
SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as boardWriter,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
	FROM CLUB_BOARD A,CLUB C 
	WHERE C.CLUB_NO = A.CLUB_NO 
	AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='유저3' AND enroll_date BETWEEN to_char(sysdate-1,'YYYY-MM-DD') and to_char(sysdate,'YYYY-MM-DD')
) ORDER BY A.ENROLL_DATE DESC)P) WHERE RNUM BETWEEN 1 AND 10;

SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='유저3' AND enroll_date BETWEEN to_char(sysdate,'YYYY-MM-DD') and to_char(sysdate,'YYYY-MM-DD');

update club_board set board_title='이게4번',enroll_date=to_char(sysdate-15,'yyyy-mm-dd') where board_no=103;

commit;

select b.board_no, b.board_title from club_board b
join club c using (club_no)
where c.CLUB_NICK='유저3'
order by enroll_date desc;
commit;

desc club;
desc club_board;
--날짜 검색 조건
create table test1(
    tt char(10)
);

--날짜 검색 예시(테이블 생성 금지)
drop table test1;
insert into test1 values(to_char(sysdate-7,'YYYY-MM-DD'));
select * from test1;
select * From test1 where tt between to_char(sysdate-7,'YYYY-MM-DD') and to_char(sysdate,'YYYY-MM-DD');
SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='유저3' AND enroll_date BETWEEN to_char(sysdate-1,'YYYY-MM-DD') and to_char(sysdate,'YYYY-MM-DD');


--날짜별 내가속한 클럽들의 게시물 조회하기
SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as boardWriter,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
	FROM CLUB_BOARD A,CLUB C 
	WHERE C.CLUB_NO = A.CLUB_NO 
	AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='유저3'
) and
a.enroll_date BETWEEN to_char(sysdate-1,'YYYY-MM-DD') and to_char(sysdate,'YYYY-MM-DD')
ORDER BY A.ENROLL_DATE DESC)P) WHERE RNUM BETWEEN 1 AND 10;

--가입신청테이블에 인사말 컬럼 추가하기
ALTER TABLE INVITE_APPLY ADD(IA_DATE CHAR(10));

DESC INVITE_APPLY;
SELECT * FROM USER_SEQUENCES;

SELECT *FROM CLUB;

--해당 클럽에 회원가입신청넣기
INSERT INTO INVITE_APPLY VALUES(
    IA_SEQ.NEXTVAL,
    38,
    '유저3',
    'N',
    '38번클럽넘버를 가진 여기에 가입신청합니다.',
    TO_CHAR(SYSDATE,'YYYY-MM-DD')
);
commit;
--해당 클럽에 회원 넣기
INSERT INTO CLUB_MEMBER VALUES(
    CM_SEQ.NEXTVAL,
    38,
    '유저3',
    TO_CHAR(SYSDATE,'YYYY-MM-DD')
);

select * from member;
rollback;
COMMIT;

UPDATE INVITE_APPLY SET IA_DATE = TO_CHAR(SYSDATE,'YYYY-MM-DD');
--신청목록 출력
SELECT 
    invite_no as iaNo,
    invite_cn as clubNo,
    receiver as receiver,
    type as iaType,
    ia_content as iaContent,
    ia_date as iaDate
FROM INVITE_APPLY WHERE INVITE_CN=38;

desc club_member;

--신청목록 삭제
DELETE FROM INVITE_APPLY  WHERE INVITE_CN=38 AND INVITE_NO=56;
rollback;
--신청목록 조회
SELECT * FROM INVITE_APPLY;

INSERT INTO CLUB_MEMBER VALUES(
    CM_SEQ.NEXTVAL,
    38,
    (SELECT receiver FROM INVITE_APPLY where invite_cn = 38 and invite_no=11),
    TO_CHAR(SYSDATE,'YYYY-MM-DD')
);
SELECT * FROM CLUB_MEMBER;



select * from club_member;

--38번클럽내 가입인원 출력
select 
    cm_no as cmNo,
    club_no as clubNo,
    club_nick as clubNick,
    enroll_date as cmDate
from club_member where clubNo=38;

select * from club_board;
delete from club_board where board_no=67;
COMMIT;

--38번 클럽의 가입인원 출력(member의 자기소개)
select 
    A.cm_no as cmNo,
    A.club_no as clubNo,
    A.club_nick as clubNick,
    A.enroll_date as cmDate,
    B.INTRO
from club_member A, MEMBER B where A.CLUB_NICK = B.MEMBER_NICK AND club_no=38;

SELECT * FROM MEMBER;
select * from club_board;
select* from category;
SELECT * FROM CALENDAR;

SELECT * FROM CATEGORY;
SELECT * FROM MEMBER;

SELECT CG_NAME FROM CATEGORY WHERE CG_NO IN(SELECT HOBBY1 FROM MEMBER WHERE MEMBER_NICK='유저3');

--멤버가 관심사 태그
SELECT MEMBER_NICK,HOBBY1,HOBBY2,HOBBY3 FROM MEMBER WHERE MEMBER_NICK='유저3';
DESC MEMBER;

SELECT 
member_no as memberNo,
       email,
       member_pw as memberPw,
       member_nick as memberNick,
       gender,
       address,
       intro,
       hobby1,
       hobby2,
       hobby3,
       filename,
       filepath,
       warning_count as warningCount,
       grade,
       enroll_date as enrollDate,
       last_date as lastDate,
       age,
       join_method as joinMethod,
    CASE HOBBY1 
        WHEN 4 THEN '스포츠'
        WHEN 5 THEN '음악'
        WHEN 6 THEN '여행'
        WHEN 7 THEN '자연'
        WHEN 8 THEN '게임'
        WHEN 9 THEN '영화'
        WHEN 10 THEN '술'
        WHEN 11 THEN '음식' END AS HO1,
    CASE HOBBY2 
        WHEN 4 THEN '스포츠'
        WHEN 5 THEN '음악'
        WHEN 6 THEN '여행'
        WHEN 7 THEN '자연'
        WHEN 8 THEN '게임'
        WHEN 9 THEN '영화'
        WHEN 10 THEN '술'
        WHEN 11 THEN '음식' END AS HO2,
    CASE HOBBY3 
        WHEN 4 THEN '스포츠'
        WHEN 5 THEN '음악'
        WHEN 6 THEN '여행'
        WHEN 7 THEN '자연'
        WHEN 8 THEN '게임'
        WHEN 9 THEN '영화'
        WHEN 10 THEN '술'
        WHEN 11 THEN '음식' END AS HO3
FROM MEMBER;

SELECT HOBBY1,HOBBY2,HOBBY3 DECODE(
    HOBBY1, 4, '스포츠',
            5, '음악',
            6, '여행',
            7, '자연',
            8, '게임',
            9, '영화',
            10, '술',
            11, '음식')NAME FROM MEMBER;

select 
		    distinct
		    (select count(*) from member) allMemberCount,
		    (select count(*) from destroy) destroyedMemberCount,
		    (select count(*) from restriction) restrictedMemberCount,
		    (select count(*) from club) allClubCount,
		    (select count(*) from member where hobby1=4 or hobby2=4 or hobby3=4) memberSports,
		    (select count(*) from member where hobby1=5 or hobby2=5 or hobby3=5) memberMusic,
		    (select count(*) from member where hobby1=6 or hobby2=6 or hobby3=6) memberTravel,
		    (select count(*) from member where hobby1=7 or hobby2=7 or hobby3=7) memberNature,
		    (select count(*) from member where hobby1=8 or hobby2=8 or hobby3=8) memberGame,
		    (select count(*) from member where hobby1=9 or hobby2=9 or hobby3=9) memberMovie,
		    (select count(*) from member where hobby1=10 or hobby2=10 or hobby3=10) memberBear,
		    (select count(*) from member where hobby1=11 or hobby2=11 or hobby3=11) memberEat,
		    (select count(*) from member where age=10) teenagers,
		    (select count(*) from member where age=20) twenties,
		    (select count(*) from member where age=30) thirties,
		    (select count(*) from member where age=40) forties,
		    (select count(*) from club where club_no=4) clubSports,
		    (select count(*) from club where club_no=5) clubMusic,
		    (select count(*) from club where club_no=6) clubTravel,
		    (select count(*) from club where club_no=7) clubNature,
		    (select count(*) from club where club_no=8) clubGame,
		    (select count(*) from club where club_no=9) clubMovie,
		    (select count(*) from club where club_no=10) clubBear,
		    (select count(*) from club where club_no=11) clubEat    
		from dual;

select * from member;
select * from club_member;

SELECT ename
     , sal
     , ROUND(RATIO_TO_REPORT(sal) OVER(), 2) * 100 || '%'  AS sal_rate
  FROM emp
 WHERE job = '유저3';
 
 SELECT * FROM CLUB;
 SELECT * FROM CLUB_BOARD;
--각 클럽의 게시물 총수 출력
SELECT COUNT(*) FROM CLUB_BOARD WHERE CLUB_NO IN(38,42);
SELECT COUNT(*) FROM CLUB_BOARD WHERE CLUB_NO=42;

--유저3이 속한 클럽넘버들 출력
select club_NO from club_member where club_nick='유저3';


--날짜별 내가속한 클럽들의 게시물 조회하기
SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as boardWriter,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
	FROM CLUB_BOARD A,CLUB C 
	WHERE C.CLUB_NO = A.CLUB_NO 
	AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='유저3'
) and
a.enroll_date BETWEEN to_char(sysdate-1,'YYYY-MM-DD') and to_char(sysdate,'YYYY-MM-DD')
ORDER BY A.ENROLL_DATE DESC)P) WHERE RNUM BETWEEN 1 AND 10;


--날짜별 내가속한 클럽들의 게시물 조회하기
SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as boardWriter,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
	FROM CLUB_BOARD A,CLUB C 
	WHERE C.CLUB_NO = A.CLUB_NO 
	AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='유저3'
) and
a.enroll_date BETWEEN to_char(sysdate-1,'YYYY-MM-DD') and to_char(sysdate,'YYYY-MM-DD')
ORDER BY A.ENROLL_DATE DESC)P) WHERE RNUM BETWEEN 1 AND 10;

--유저3이 속한 클럽명 내용
SELECT * FROM CLUB WHERE CLUB_NO IN(select club_NO from club_member where club_nick='유저3');
--유저3인 속한 클럽넘버
select club_NO from club_member where club_nick='유저3';
SELECT * FROM CLUB;

SELECT * FROM CLUB_MEMBER;
SELECT * FROM CLUB;


--유저가 속한 클럽의 게시물 수 확인(+CLUB의 클럽네임까지 가져오기,+회원이 속한 클럽 번호들)
SELECT 
    CLUB_NO,
    COUNT(*) as clubPostCount,
    (SELECT CLUB_NAME FROM CLUB C WHERE C.CLUB_NO = CB.CLUB_NO) AS CLUBNAME  
FROM CLUB_BOARD CB 
WHERE CLUB_NO IN(select club_NO from club_member where club_nick='유저3') GROUP BY CLUB_NO;

select * from club_board;

select * from club_board;
DESC DIRECT_MESSAGE;
SELECT * FROM DIRECT_MESSAGE;

INSERT INTO DIRECT_MESSAGE VALUES(
    DM_SEQ.NEXTVAL,
    '유저3',
    '유저3',
    '메세지 내용 테스트',
    TO_CHAR(SYSDATE,'YYYY-MM-DD'),
    'N'
);
SELECT * FROM CLUB;

select * from member;
select * from club_member;


DELETE CLUB_BOARD FORM WHERE BOARD_NO IN(163);
COMMIT;
select * from club;
select * from CLUB_COMMENT;
insert into CLUB_COMMENT values(
    cc_seq.nextval,
    160,
    '유저3',
    '두번째 내용',
    0,
    null,
    0
);
commit;
select * from member;
update member set member_pw= '1234' where member_no=5;
select * from club_board;
desc board;

select * from member;
--해당 댓글 작성자의 프로필 사진까지 함께 출력
select
	A.CC_NO AS ccNo,
	A.board_no as boardNo,
	A.cc_writer as ccWriter,
	A.cc_content as ccContent,
	A.cc_cg as ccCG,
	A.cc_ref as ccREF,
	A.cc_good as ccGOOD,
    B.filepath
from CLUB_COMMENT A, MEMBER B WHERE A.CC_WRITER = B.MEMBER_NICK AND BOARD_NO=151;

select * from club_member;
select * from club;
INSERT INTO CLUB_MEMBER VALUES(
    CM_SEQ.NEXTVAL,
    42,
    '유저3',
    TO_CHAR(SYSDATE,'YYYY-MM-DD'));
    rollback;
commit;

	SELECT
		CLUB_NO as clubNo,
		CLUB_CG  as clubCg,            
		CLUB_NAME  as clubName,
		CLUB_INTRO  as clubIntro,
		CLUB_OPENER  as clubOpener,        
		fileName,  
		filePath, 
		CLUB_RATING as clubRating,
		ISPUBLIC,
		ENROLL_DATE as enrollDate,
		LAST_DATE as lastDate,
		WARNING_COUNT as warningCount
	FROM CLUB WHERE 
	CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK= '유저3') OR CLUB_OPENER='유저3';
    	SELECT
		CLUB_NO as clubNo,
		CLUB_CG  as clubCg,            
		CLUB_NAME  as clubName,
		CLUB_INTRO  as clubIntro,
		CLUB_OPENER  as clubOpener,        
		fileName,  
		filePath, 
		CLUB_RATING as clubRating,
		ISPUBLIC,
		ENROLL_DATE as enrollDate,
		LAST_DATE as lastDate,
		WARNING_COUNT as warningCount
	FROM CLUB WHERE 
	CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='유저3') OR CLUB_OPENER='유저3';
SELECT * FROM CLUB WHERE CLUB_OPENER='유저3';

select * from club;
delete from club where club_no = 41;
commit;

SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as boardWriter,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
	FROM CLUB_BOARD A,CLUB C 
	WHERE C.CLUB_NO = A.CLUB_NO 
	AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='유저3'or club_opener='유저3')
ORDER BY A.ENROLL_DATE DESC)P);

select * from club_board where board_content like '%어가%';

select * from club_board;

delete from club_board where board_no=174;
commit;

--검색 조건에 따른 더보기게시물 가져오기
SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as boardWriter,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
	FROM CLUB_BOARD A,CLUB C 
	WHERE C.CLUB_NO = A.CLUB_NO 
	AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='유저1' or club_opener='유저1' and board_title like '%콘주%') 
ORDER BY A.ENROLL_DATE DESC)P) WHERE  RNUM BETWEEN 1 AND 5;


--유저3이 속한 게시물들의 조건 검색한 갯수를 가져온다
SELECT 
    count(*)
FROM CLUB_BOARD A,CLUB C 
WHERE C.CLUB_NO = A.CLUB_NO and board_title like '%%'
AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='유저3');

--게시물의 검색조건에 맞는 값을 가져온다
SELECT 
    count(*)
FROM CLUB_BOARD A,CLUB C 
WHERE C.CLUB_NO = A.CLUB_NO and board_title like '%콘주%';

select * from club;


--제목과 내용에 같은 키워드를 넘겨주어 검색 and연산자 먼저 조건 검사
SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as boardWriter,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
	FROM CLUB_BOARD A,CLUB C 
	WHERE C.CLUB_NO = A.CLUB_NO 
	AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE (CLUB_NICK='유저3' or club_opener='유저3') and (board_Title like '%테스트%' or board_content  like '%테스트%')) 
ORDER BY A.ENROLL_DATE DESC)P) WHERE RNUM BETWEEN 1 AND 10;

SELECT 
    count(*)
FROM CLUB_BOARD A,CLUB C 
WHERE C.CLUB_NO = A.CLUB_NO and (board_title like '%테스트%' or board_content  like '%테스트%' )
AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='유저3');


SELECT 
    count(*)
FROM CLUB_BOARD A,CLUB C 
WHERE C.CLUB_NO = A.CLUB_NO and (board_title like '%'||#{searchCon}||'%' or board_content like '%'||#{searchCon}||'%')
AND 
C.CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK='유저3');

	SELECT
		CLUB_NO as clubNo,
		CLUB_CG  as clubCg,            
		CLUB_NAME  as clubName,
		CLUB_INTRO  as clubIntro,
		CLUB_OPENER  as clubOpener,        
		fileName,  
		filePath, 
		CLUB_RATING as clubRating,
		ISPUBLIC,
		ENROLL_DATE as enrollDate,
		LAST_DATE as lastDate,
		WARNING_COUNT as warningCount
	FROM CLUB WHERE 
	CLUB_NO IN(SELECT CLUB_NO FROM CLUB_MEMBER WHERE CLUB_NICK= '유저3') OR CLUB_OPENER='유저3';


--멤버와 클럽오프너가 속한 클럽들의 (클럽넘버, 게시물갯수, 클럽이름) 출력
SELECT 
    club_no,
    count(*) as clubPostCount,
    (SELECT CLUB_NAME FROM CLUB C WHERE C.CLUB_NO = CB.CLUB_NO) AS CLUBNAME
FROM CLUB_board CB 
WHERE CLUB_NO IN(SELECT 
    CLUB_NO 
FROM CLUB CB 
WHERE CLUB_NO IN(select club_NO from club_member where club_nick='유저3') OR CLUB_OPENER='유저3') GROUP BY CLUB_NO;

SELECT 
    club_no
FROM CLUB_board CB 
WHERE CLUB_NO IN(SELECT CLUB_NO FROM CLUB CB WHERE CLUB_NO IN(select club_NO from club_member where club_nick='유저3') OR CLUB_OPENER='유저3')GROUP BY CLUB_NO;

--기존 쿼리문 멤버만 속한 클럽들의 게시물 갯수 출력
SELECT 
    CLUB_NO,
    COUNT(*)as clubPostCount,
    (SELECT CLUB_NAME FROM CLUB C WHERE C.CLUB_NO = CB.CLUB_NO) AS CLUBNAME  
FROM CLUB_BOARD CB 
WHERE CLUB_NO IN(select club_NO from club_member where club_nick='유저3') GROUP BY CLUB_NO;

--10개씩 출력
SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as boardWriter,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
	FROM CLUB_BOARD A,CLUB C 
	WHERE C.CLUB_NO = A.CLUB_NO 
	AND 
C.CLUB_NO IN(SELECT club_no
FROM CLUB_board CB 
WHERE CLUB_NO IN(SELECT CLUB_NO FROM CLUB CB WHERE CLUB_NO IN(select club_NO from club_member where club_nick='유저3') OR CLUB_OPENER='유저3')GROUP BY CLUB_NO) 
and (board_title like '%%' or board_content like '%%')
ORDER BY A.ENROLL_DATE DESC)P) WHERE RNUM BETWEEN 1 AND 10;

SELECT CLUB_NO FROM CLUB_MEMBER 
WHERE(CLUB_NICK='유저3' or club_opener='유저3';
--멤버 오프너 가 속한 클럽 번호
SELECT 
    club_no
FROM CLUB_board CB 
WHERE CLUB_NO IN(SELECT CLUB_NO FROM CLUB CB WHERE CLUB_NO IN(select club_NO from club_member where club_nick='유저3') OR CLUB_OPENER='유저3')GROUP BY CLUB_NO;
commit;
select * from club_board;
select * from club;
delete from club where club_no in(89);
commit;

UPDATE CLUB_BOARD SET BOARD_GOOD = BOARD_GOOD+1 WHERE BOARD_NO=188;


select * from club_board where club_no = 90;
select * from likes;
select * from member;
select * from club_board;
--게시물 좋아요
CREATE TABLE BOARD_LIKE(
    BOARD_NO       INT             NOT NULL, 
    MEMBER_NICK    VARCHAR2(40)    NOT NULL
    GOOD_COUNT      INT     
);
ALTER TABLE BOARD_LIKE ADD GOOD_COUNT INT DEFAULT 0;
COMMIT;

UPDATE BOARD_LIKE SET 
    BOARD_GOOD = BOARD_GOOD + #{number},
    MEMBER_NICK = #{m.memberNick}
WHERE BOARD_NO=#{boardMoment};

select * from board_like;



ALTER TABLE board_like DROP COLUMN GOOD_COUNT GROUP BY BOARD;

insert into board_like values(
    188,
    '유저2'
);
commit;
--각각의 게시물에 유저 좋아요(INSERT) 의 카운트
SELECT * FROM BOARD_LIKE;

select board_no,count(*) from board_like group by board_no;

--기존의 클럽보드와 클럽을 이용한 서브쿼리
SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    A.board_no as boardNo,
    A.club_no as clubNo,
    A.board_cg as boardCg,
    A.BOARD_WRITER as boardWriter,
    A.board_title as boardTitle,
    A.board_content as boardContent,
    A.fileName,
    A.filePath,
    A.board_views as boardViews,
    A.BOARD_good as cbGood,
    A.enroll_date as enrollDate,
    C.CLUB_NAME AS clubName 
	FROM CLUB_BOARD A,CLUB C
	WHERE C.CLUB_NO = A.CLUB_NO
    AND
C.CLUB_NO IN(SELECT club_no
FROM CLUB_board CB 
WHERE CLUB_NO IN(SELECT CLUB_NO FROM CLUB CB WHERE CLUB_NO IN(select club_NO from club_member where club_nick='유저3') OR CLUB_OPENER='유저3')GROUP BY CLUB_NO)
ORDER BY A.ENROLL_DATE DESC)P);
--
commit;

    B.club_no as clubNo,
    B.board_cg as boardCg,
    B.BOARD_TITLE,
    B.BOARD_WRITER as boardWriter,
    B.board_content as boardContent,
    B.fileName,
    B.filePath,
    B.board_views as boardViews,
    B.BOARD_good as cbGood,
    B.enroll_date as enrollDate,

--3가지를 이용한 서브쿼리
--DECODE를 이용한 IF문 방식
SELECT * FROM
(select rownum as rnum,p.*from
(SELECT 
    B.BOARD_NO, 
    C.CLUB_NAME,
    B.club_no as clubNo,
    B.board_cg as boardCg,
    B.BOARD_TITLE,
    B.BOARD_WRITER as boardWriter,
    B.board_content as boardContent,
    B.fileName,
    B.filePath,
    B.board_views as boardViews,
    B.BOARD_good as cbGood,
    B.enroll_date as enrollDate,
    
    (SELECT COUNT(*) FROM BOARD_LIKE BL WHERE BL.BOARD_NO = B.BOARD_NO) AS TOTALCOUNT,
    DECODE(
        (SELECT COUNT(*) FROM BOARD_LIKE BL2 WHERE BL2.BOARD_NO = B.BOARD_NO AND BL2.MEMBER_NICK='유저2'),
        1,
        '좋아요누름',
        '좋아요안누름'
    ) AS LIKECHECK
FROM CLUB_BOARD B,CLUB C
WHERE B.CLUB_NO = C.CLUB_NO
AND C.CLUB_NO IN(
SELECT CLUB_NO FROM CLUB CB WHERE CLUB_NO IN(select club_NO from club_member where club_nick='유저3') OR CLUB_OPENER='유저3')
and (board_title like '%%' or board_content like '%%')
ORDER BY B.ENROLL_DATE DESC)P) WHERE RNUM BETWEEN 1 AND 10;


select * from CALENDAR;

ALTER TABLE CALENDAR ADD ID INT;

COMMIT;




