select 
	dept_code, 
	course# 
from 
	(select 
		c.dept_code, 
		c.course#, 
		count(e.B#) student_count 
	From 
		Classes c , 
		Enrollments e 
	Where 
		C.classid = e.classid 
	group by 
		c.dept_code, 
		c.course#
	) student_course 
group by dept_code, 
		course# 
having 
	max(student_count) = student_count;
