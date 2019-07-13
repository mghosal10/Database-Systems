select 
	e.B#, 
	SUM(cc.credits) as "Total Credits" 
from 
	enrollments e, 
	classes c, 
	course_credit cc 
where 
	e.classid=c.classid 
	and c.course#=cc.course# 
group by 
	e.B# 
order by 
	e.B#;
