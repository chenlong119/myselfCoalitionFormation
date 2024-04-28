set @resource_count=0;
select count(*) into @resource_count from resource_all where resource_type=4;
set @minid=0;
set @maxid=0;
select min(id) into @minid from resource_all where resource_type=4;
select max(id) into @maxid from resource_all where resource_type=4;
call InsertCompanyResource(4, 1,@minid, @minid+Floor(@resource_count/2));
call InsertCompanyResource(4, 2,@minid+FLOOR(@resource_count/2)+1, @minid+@resource_count-1);
call InsertCompanyResource(4, 3,@minid+FLOOR(@resource_count/3), @minid+2*FLOOR(@resource_count/3));