select 
	distinct s.B#,
	s.first_name, 
	s.last_name 
from 
	students s,enrollments e 
where 
	s.B#=e.B# 
	and s.B# not in
	(select 
		B# 
	from 
		enrollments 
	where lgrade='A');
