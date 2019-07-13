select distinct 
	s.B#, 
	s.first_name, 
	s.last_name 
from 
	students s, 
	enrollments e1  
where 
	s.B#=e1.B# 
	and s.B# not in 
		(select 
			e2.B# 
		from 
			enrollments e2,
			classes c 
		where 
			e2.classid = c.classid 
			and s.deptname <> c.dept_code) 
order by s.B#;
