column bdate format a10
column bdate heading 'birth date'
select 
	s1.B#, 
	s1.first_name, 
	s1.last_name, 
	s1.bdate 
from 
	students s1, 
	tas ta 
where 
	s1.deptname='CS' 
	and s1.B#=ta.B#;
