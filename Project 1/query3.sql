select 
	s.first_name||' '||s.last_name as "Name", 
	s.email, 
	c.classid, 
	c.dept_code||' '||c.course# as "course_id" 
from 
	students s, 
	classes c 
where 
	s.status='PhD' and s.B#=c.ta_B#;

