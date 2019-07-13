select 
	classid, 
	dept_code, 
	course#, 
	(limit-class_size) as  seats_available 
from 
	classes 
where 
	course#<500 
	and year='2017' 
	and semester='Spring';