## SQL Queries
# Q1 : Table look-ups are faster!! -- Linear Interpolation 
In general table look ups are faster compared to large calculations. Q1.sql contains three queries. First two query generates a Co-sine table with angles and values at smaller interval (say 5) (ex. 5, 10, 15, ...). Now that the co-sine table is available, using the linear interpolation formula, it becomes computationally cheaper to find the values than otherwise. Third Query generates linear interpolation values using different co-sine values from the table. 

# Q2. Descriptive statistics

You are given a table of salaries. The table has just 'n' entries, in the real world a similar table might have 700, or even 70,000 entries. The task is to find the amount that occurs the most # of times, and also the count (how many times). Interestingly, SQL does not come with a built-in function for this common operation.

Write a SQL query that outputs the two values - most occuring amount, and the count.

CREATE TABLE Salaries(
CheckNum INTEGER PRIMARY KEY,
Amount DECIMAL(8,2) NOT NULL
);

Note - if there are multiple amounts that occur the most # of times your query needs to output all of such amounts, not just one.
