select 
	s.B#, 
	s.first_name, 
	s.last_name 
from 
	students s 
where 
	((select 
		count(*) num_enrollments 
	from 
		enrollments e, 
		classes c 
	where 
		s.B#=e.B# 
		and e.classid=c.classid 
		and s.deptname!=c.dept_code)>=1);