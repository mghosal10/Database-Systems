select 
	classid, 
	dept_code, 
	course# 
from 
	classes 
where 
	classid in
		(select 
			classid 
		from 
			enrollments 
		where 
			B# in
			(select 
				B# 
			from 
				students 
			where 
				status='junior'));