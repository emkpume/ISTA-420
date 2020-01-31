select *
	from Region as R1
	cross join Territories as T
	where R1.RegionID = T.RegionID
	and R1.RegionDescription like 'East%';
	select Count(*) from territories;

	select *
		from Region as R
		join Territories as T
		on R.RegionID = T.RegionID
		where R.RegionDescription like 'East%';
