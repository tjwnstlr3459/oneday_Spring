CREATE TABLE KH_TBL(
KH_NO NUMBER PRIMARY KEY,
KH_NAME VARCHAR2(100),
ADDR VARCHAR2(300),
FAX VARCHAR2(12)
);
CREATE SEQUENCE KH_SEQ;
INSERT INTO KH_TBL VALUES(KH_SEQ.NEXTVAL,'��������','����Ư���� ������ ������� 14�� 6','02-562-2378');
INSERT INTO KH_TBL VALUES(KH_SEQ.NEXTVAL,'��������','����Ư���� �߱� ���빮�� 120','02-722-0858');
INSERT INTO KH_TBL VALUES(KH_SEQ.NEXTVAL,'�������','����Ư���� �������� ������2�� 57','02-2163-8560');

SELECT * FROM KH_TBL;
SELECT * FROM FREE;
select * from member;
INSERT INTO FREE VALUES(FREE_SEQ.NEXTVAL,'�����е� �Ŀ��غ�����','test01','��鼭 ó������ �غôµ� �ѵ��ϴ��󱸿䤾�� �����е� �Ͻø� �и� �������ǰſ���!!',TO_CHAR(SYSDATE,'YYYY-MM-DD'),(NULL),5);
INSERT INTO FREE VALUES(FREE_SEQ.NEXTVAL,'�Ŀ���ǰ ����Ƽ�� ����� ���׿�!','test77','�Ŀ���ǰ�� �����ؼ� ����غôµ� �������� �ʹ� ���׿�',TO_CHAR(SYSDATE,'YYYY-MM-DD'),(NULL),2);
INSERT INTO FREE VALUES(FREE_SEQ.NEXTVAL,'���� ����Ȱ�� �ٳ�԰ŵ��!?','test99','���� ��ź�����⵵ �غ���, �̿��� �����ַ� ���ôµ� ����� ��ũ���',TO_CHAR(SYSDATE,'YYYY-MM-DD'),(NULL),10);
INSERT INTO FREE VALUES(FREE_SEQ.NEXTVAL,'�ؿܿ� ������ �غ����߿�!','test119','�ؿܾƵ� ���̵�� ���� �Դµ� �����𸣰� �ູ�ϴ��󱸿�!����',TO_CHAR(SYSDATE,'YYYY-MM-DD'),(NULL),7);
INSERT INTO FREE VALUES(FREE_SEQ.NEXTVAL,'���� �����ϴ� ����鿡�� �Ŀ�����?','test9','���� ���������� �Ŀ��� �˰ԵǼ� �ʹ� ���� ��մ�������',TO_CHAR(SYSDATE,'YYYY-MM-DD'),(NULL),9);


select * from notice1;

INSERT INTO NOTICE1 VALUES(NOTICE1_SEQ.NEXTVAL,'���� �������� �Դϴ� Ȯ�ιٶ��ϴ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!',TO_CHAR(SYSDATE,'YYYY-MM-DD'),(null),(null));
INSERT INTO NOTICE1 VALUES(NOTICE1_SEQ.NEXTVAL,'������ �Ŀ���Ұ� ����Ǿ����ϴ�.','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!',TO_CHAR(SYSDATE,'YYYY-MM-DD'),(null),(null));
INSERT INTO NOTICE1 VALUES(NOTICE1_SEQ.NEXTVAL,'�̹��� ����ȸ�� ����Դϴ�!','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!',TO_CHAR(SYSDATE,'YYYY-MM-DD'),(null),(null));
INSERT INTO NOTICE1 VALUES(NOTICE1_SEQ.NEXTVAL,'�����ǰ ���� �ȳ�����','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!',TO_CHAR(SYSDATE,'YYYY-MM-DD'),(null),(null));
INSERT INTO NOTICE1 VALUES(NOTICE1_SEQ.NEXTVAL,'�̹��� ��ǥ �Ŀ���� �ȳ�','admin1','�̹��� �Ŀ���Ұ� ����Ǿ����ϴ�, ����Ư���� �ſ���17-2 ��ġ�Դϴ�!!',TO_CHAR(SYSDATE,'YYYY-MM-DD'),(null),(null));


commit;