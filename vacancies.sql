--------------------------------------------------------
--  File created - Friday-November-08-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table VACANCIES
--------------------------------------------------------

  CREATE TABLE "LABANISH"."VACANCIES" 
   (	"ID" NUMBER, 
	"VACANCYID" VARCHAR2(4000 BYTE) COLLATE "USING_NLS_COMP", 
	"TITLE" VARCHAR2(4000 BYTE) COLLATE "USING_NLS_COMP", 
	"JOBTYPE" VARCHAR2(4000 BYTE) COLLATE "USING_NLS_COMP", 
	"LOCATION" VARCHAR2(4000 BYTE) COLLATE "USING_NLS_COMP", 
	"POSTEDDATE" DATE, 
	"CREATED" DATE, 
	"CREATED_BY" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP", 
	"UPDATED" DATE, 
	"UPDATED_BY" VARCHAR2(255 BYTE) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
REM INSERTING into LABANISH.VACANCIES
SET DEFINE OFF;
Insert into LABANISH.VACANCIES (ID,VACANCYID,TITLE,JOBTYPE,LOCATION,POSTEDDATE,CREATED,CREATED_BY,UPDATED,UPDATED_BY) values (200406437507811799849304496586690798798,'SE100','Solution Engineer -UKIL','TECH','EUROPE',to_date('07-NOV-19','DD-MON-RR'),to_date('07-NOV-19','DD-MON-RR'),'LABANISH',to_date('07-NOV-19','DD-MON-RR'),'LABANISH');
Insert into LABANISH.VACANCIES (ID,VACANCYID,TITLE,JOBTYPE,LOCATION,POSTEDDATE,CREATED,CREATED_BY,UPDATED,UPDATED_BY) values (200406437507813008775124111215865504974,'HR200','HR Manager','HR','AFRICA',to_date('07-NOV-19','DD-MON-RR'),to_date('07-NOV-19','DD-MON-RR'),'LABANISH',to_date('07-NOV-19','DD-MON-RR'),'LABANISH');
Insert into LABANISH.VACANCIES (ID,VACANCYID,TITLE,JOBTYPE,LOCATION,POSTEDDATE,CREATED,CREATED_BY,UPDATED,UPDATED_BY) values (200410544913582774449681818124964000952,'MKT300','Marketing Manager','MARKETING','ASIA',to_date('07-NOV-19','DD-MON-RR'),to_date('07-NOV-19','DD-MON-RR'),'LABANISH',to_date('07-NOV-19','DD-MON-RR'),'LABANISH');
Insert into LABANISH.VACANCIES (ID,VACANCYID,TITLE,JOBTYPE,LOCATION,POSTEDDATE,CREATED,CREATED_BY,UPDATED,UPDATED_BY) values (200423860548078818403752173986663545486,'MKT301','Marketing Manager','MARKETING','EUROPE',to_date('07-NOV-19','DD-MON-RR'),to_date('07-NOV-19','DD-MON-RR'),'LABANISH',to_date('07-NOV-19','DD-MON-RR'),'LABANISH');
Insert into LABANISH.VACANCIES (ID,VACANCYID,TITLE,JOBTYPE,LOCATION,POSTEDDATE,CREATED,CREATED_BY,UPDATED,UPDATED_BY) values (200423860548080027329571788615838251662,'SE101','Solution Engineering','TECH','AFRICA',to_date('07-NOV-19','DD-MON-RR'),to_date('07-NOV-19','DD-MON-RR'),'LABANISH',to_date('07-NOV-19','DD-MON-RR'),'LABANISH');
--------------------------------------------------------
--  DDL for Index VACANCIES_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LABANISH"."VACANCIES_ID_PK" ON "LABANISH"."VACANCIES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  DDL for Trigger VACANCIES_BIU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "LABANISH"."VACANCIES_BIU" 
    before insert or update  
    on vacancies 
    for each row 
begin 
    if :new.id is null then 
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
    if inserting then 
        :new.created := sysdate; 
        :new.created_by := nvl(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 
    :new.updated := sysdate; 
    :new.updated_by := nvl(sys_context('APEX$SESSION','APP_USER'),user); 
end vacancies_biu; 

/
ALTER TRIGGER "LABANISH"."VACANCIES_BIU" ENABLE;
--------------------------------------------------------
--  Constraints for Table VACANCIES
--------------------------------------------------------

  ALTER TABLE "LABANISH"."VACANCIES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "LABANISH"."VACANCIES" MODIFY ("CREATED" NOT NULL ENABLE);
  ALTER TABLE "LABANISH"."VACANCIES" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "LABANISH"."VACANCIES" MODIFY ("UPDATED" NOT NULL ENABLE);
  ALTER TABLE "LABANISH"."VACANCIES" MODIFY ("UPDATED_BY" NOT NULL ENABLE);
  ALTER TABLE "LABANISH"."VACANCIES" ADD CONSTRAINT "VACANCIES_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;