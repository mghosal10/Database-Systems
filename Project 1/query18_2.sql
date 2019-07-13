select 
	s.B#, 
	s.first_name, 
	s.last_name 
from 
	students s, 
	enrollments e 
where 
	s.B# in 
		(select 
			B# 
		from 
			enrollments 
		where 
			s.B#=e.B# 
			and e.classid in
				(select 
					classid 
				from 
					enrollments 
				where 
					B#='B005'));