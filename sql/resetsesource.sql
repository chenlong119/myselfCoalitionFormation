update task_all set task_status=0,coalition_id=0 where task_status=1 and id>57;
update company_all set status=1,coalition_id=0 where status=2 and coalition_id>11;
delete from coalition where coalition_status=1 and id>11 and name not like '新%';