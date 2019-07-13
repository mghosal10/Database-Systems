select 
	s.B#, 
	s.first_name, 
	s.last_name 
from
	students s 
where 
	not exists
		(select * from 
			classes c 
		where 
			c.dept_code='CS' 
			and c.year='2017' 
			and c.semester='Spring' 
			and not exists
				(select * from 
					enrollments e 
				where 
					c.classid = e.classid 
					and s.B#=e.B#));
