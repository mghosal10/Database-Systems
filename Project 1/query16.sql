select distinct 
	c.dept_code, 
	c.course#, 
	c.title 
from 
	courses c, 
	Classes cl, 
	students s, 
	enrollments e 
where 
	s.B# = e.B# 
	and e.classid = cl.classid 
	and cl.course# = c.course# 
	and c.title like '%systems%' 
	and s.gpa=4.0 ;
