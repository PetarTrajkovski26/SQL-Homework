--Find all Students with FirstName = Antonio

select * from dbo.Students
where FirstName= 'Antonio'

--Find all Students with DateOfBirth greater than ‘01.01.1999’

select * from dbo.Students
where DateOfBirth > '1999-01-01'

--Find all Students with LastName starting With ‘J’ enrolled in January/1998

select * from dbo.Students
where LastName like 'J%' and EnrolledDate > '1998-01-01' and EnrolledDate < '1998-01-31'

--List all Students ordered by FirstName

select * from dbo.Students
order by FirstName

--List all Teacher  Last Names and Student Last Names in single result set. Remove  duplicates

select LastName from dbo.Teachers
union
select LastName from dbo.Students
