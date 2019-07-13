select distinct 
	c.dept_code, 
	c.course#, 
	co.title, 
	nvl(e.lgrade, 'grade missing') Grade 
from 
	enrollments e, 
	classes c, 
	courses co 
where 
	e.B#='B003' 
	and e.classid=c.classid 
	and  c.course#=co.course#;