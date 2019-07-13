column lgrade format a10

Select 
* 
from 
	(Select 
		B#, 
		Classid, 
		lgrade as  "lgrade", 
		Case when lgrade='A' then 4 
		when lgrade='A-' then 3.7
		when lgrade='B+' then 3.3
		when lgrade='B' then 3
		when lgrade='B-' then 2.7
		when lgrade='C+' then 2.3
		when lgrade='C' then 2
		when lgrade='C-' then 1.7 
		when lgrade='D' then 1
		Else 0 end ngrade 
	From 
		Enrollments 
	Where 
		Lgrade is not null and lgrade not in ('I')
	) enroll_tbl 
Order by 
	ngrade desc;
