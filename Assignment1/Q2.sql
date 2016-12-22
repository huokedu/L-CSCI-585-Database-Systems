--DATABASE used SQLite--

--Creating the Table--
CREATE TABLE Salaries(
CheckNum INTEGER PRIMARY KEY,
Amount DECIMAL(8,2) NOT NULL
);

--Inserting Into the Table--
INSERT INTO Salaries(CheckNum, Amount)
VALUES (1111,4532),(1212,12000),(1234,12000),(3344,6000),(4324,7500),(4555,6000.12),(9999,12000), (4747,6000),(4748,6000);

--Query to find max occurence of an amount--

select * from
(
	select amount, count(amount) as MaxCount from Salaries
	group by Amount
	order by count(amount) Desc 
) as NewTable
where MaxCount in 
(
	select max(MaxCount) from 
	(
		select amount, count(amount) as MaxCount from Salaries
		group by Amount
		order by count(amount) Desc 
	) as NewTable
)
