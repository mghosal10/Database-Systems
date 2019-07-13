select 
	s1.B#, 
	s2.first_name, 
	s2.last_name, 
	s2.gpa
from 
	(select 
		e.B#, 
		c.dept_code, 
		count(c.classid) 
	from 
		enrollments e, 
		classes c 
	where 
		e.classid=c.classid 
		and c.dept_code in ('CS','Math') 
	group by 
		e.B#, 
		c.dept_code 
	order by
		e.B#
	) s1, 
	students s2
where 
	s2.B#=s1.B#
group by 
	s1.B#, s2.first_name, s2.last_name, s2.gpa
having 
	count(s1.dept_code)=2;
