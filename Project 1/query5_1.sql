select 
	s.B#, 
	s.first_name, 
	s.last_name 
from 
	students s 
where 
	(select 
		count(*) num_enrollments 
	from 
		enrollments e 
	where 
		s.B#=e.B# 
		and s.B# not in
		(select 
			B# 
		from 
			enrollments 
		where lgrade='A')
		)>=1 
order by 
	s.B#;
