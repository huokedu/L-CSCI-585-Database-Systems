--DATABASE used SQLite--

--Creating the Table--
CREATE TABLE CosineTable(
Angle INTEGER PRIMARY KEY,
CosValue DECIMAL(8,7) NOT NULL
);

-- Filling the Value--
insert into Cosinetable(Angle,CosValue)
values (0,1),
(5,0.9962),
(10,0.9848),
(15,0.9659),
(20,0.9397),
(25,0.9063),
(30,0.866),
(35,0.8192),
(40,0.766),
(45,0.7071),
(50,0.6428),
(55,0.5736),
(60,0.5),
(65,0.4226),
(70,0.342),
(75,0.2588),
(80,0.1736),
(85,0.0872),
(90,0);

--Linear Interpolation--
select (one.cos_a + (two.cos_b - one.cos_a)*(73-(
			select max(Angle) as a from CosineTable
			where Angle in 
			(
				select angle from CosineTable where angle<=73
			)  
			
		) )/((
			select min(Angle) as b from CosineTable
			where Angle in 
			(
				select angle from CosineTable where angle>=73
			) 
		) - (
			select max(Angle) as a from CosineTable
			where Angle in 
			(
				select angle from CosineTable where angle<=73
			)  
			
		) ))as CosValue from
(select CosValue as cos_a from CosineTable where Angle =
		(
			select max(Angle) as a from CosineTable
			where Angle in 
			(
				select angle from CosineTable where angle<=73
			)  
			
		) 
) as ONE
,
(select CosValue as cos_b  from CosineTable where Angle = 
		(
			select min(Angle) as b from CosineTable
			where Angle in 
			(
				select angle from CosineTable where angle>=73
			) 
		) 
) as TWO