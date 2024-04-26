set @resource_count=0;
select count(*) into @resource_count from resource_all where resource_type=1;
call InsertCompanyResource(1, 1,1, FLOOR(@resource_count/2));
call InsertCompanyResource(1, 2,FLOOR(@resource_count/2)+1, @resource_count);
call InsertCompanyResource(1, 3,FLOOR(@resource_count/3), 2*FLOOR(@resource_count/3));