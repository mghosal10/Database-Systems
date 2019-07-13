select B#,
	first_name||' '||last_name as "Name" 
from 
	students 
where 
	deptname='CS' 
	and gpa>3.5;
