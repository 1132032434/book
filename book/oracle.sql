
--修改表column
alter table RISK_ASSESS_tolerance rename column  'SCORE_TOTAL'  to 'SCORE_RATE_SCORE';

--修改表名
comment on column RSMDATA.RISK_ASSESS_tolerance.SCORE_RATE
	is '容忍度指标限额执行率';
	
--修改表字段属性
alter table RSMDATA.RISK_APPRAISAL_DETAIL modify CS_APPRAISAL_REASON VARCHAR2(4000);

alter table RSMDATA.TRIAL_INDICATOR_RESULT
	add constraint PK_TRIAL_INDICATOR_RESULT primary key (TRIAL_RESULT_ID) using index;

alter table RSMDATA.TRIAL_INDICATOR_RESULT
  add constraint FK_TRIAL_INDICATOR_RESULT_TTI foreign key (TRIAL_TASK_ID)
  references RSMDATA.TRIAL_TASK_RECORD (TRIAL_TASK_ID);