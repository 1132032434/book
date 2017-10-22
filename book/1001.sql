
alter table RISK_ASSESS_tolerance rename column  '容忍度指标限额执行率得分'  to '容忍度指标限额执行率';

alter table RISK_ASSESS_tolerance drop ('SCORE_TOTAL');


alter table RISK_ASSESS_tolerance add (SCORE_RATE_SCORE NUMBER(16,4) default '容忍度指标限额执行率得分' null);

