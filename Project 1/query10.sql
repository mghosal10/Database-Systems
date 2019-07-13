select 
	s.B#, 
	s.first_name, 
	s.last_name, 
	count(e.classid) as "Classes" 
from 
	students s, enrollments e 
where 
	s.B#=e.B# 
group by 
	s.B#, 
	s.first_name, 
	s.last_name 
having count(e.classid)>=2;
