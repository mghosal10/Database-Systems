select 
	s.B#, 
	s.first_name, 
	s.last_name 
from 
	students s 
where 
	B# in
	(select 
		B# 
	from 
		enrollments e 
	where 
		classid in
			(select 
				classid 
			from 
				enrollments 
			where 
				B#='B005'));
