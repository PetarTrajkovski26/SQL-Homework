Create Table dbo.Students
(
	Id int identity(1,1) NOT NULL,
	FirstName nvarchar (10) NOT NULL,
	LastName nvarchar (10) NOT NULL,
	DateOfBirth date NULL,
	EnrolledDate date NULL,
	Gender nvarchar(1) NULL,
	NationalIdNumber nvarchar(20) NULL,
	StudentCardNumber nvarchar (20) NULL,
	Constraint PK_Students_Id Primary Key (ID)
)

Insert into dbo.Students (FirstName, LastName, DateOfBirth, EnrolledDate, Gender, NationalIdNumber, StudentCardNumber)
Values ('Petar', 'Trajkovski', '2001-06-20', '2021-11-02', 'M', '123123123123', '1111111111')

select * from dbo.Students

Create Table Teachers 
(
	Id int identity (1,1) NOT NULL,
	FirstName nvarchar (10) NOT NULL,
	LastName nvarchar (10) NOT NULL,
	DateOfBirth date NULL,
	AcademicRank nvarchar(10) NOT NULL,
	HireDate date NULL,
	Constraint PK_Teachers_Id Primary Key (ID)
)

Insert into dbo.Teachers (FirstName, LastName, AcademicRank)
Values ('Dana', 'Tasevska', 'Trainer')

Select * from dbo.Teachers

Create Table Grade 
(
	Id int identity (1,1) NOT NULL,
	StudentId nvarchar (20) NULL,
	CourseId nvarchar (20) NULL,
	TeacherId nvarchar (20) NULL,
	Grade int NULL,
	Comment nvarchar(50) NULL,
	CreatedDate date NULL,
	Constraint PK_Grade_Id Primary Key (ID)
)

Insert into dbo.Grade (StudentId, CourseId, TeacherId, Grade, Comment, CreatedDate)
values ('1', '1', '1', 10, 'The student has passed', '2022-05-30')

Select * from dbo.Grade

Create Table Course 
(
	Id int identity (1,1) NOT NULL,
	[Name] nvarchar (10) NULL,
	Credit nvarchar (10) NULL,
	AcademicYear nvarchar (10) NULL,
	Semester int NULL,
	Constraint PK_Course_Id Primary Key (ID)
)

Insert into dbo.Course ([Name], Credit, AcademicYear, Semester)
Values ('SQL', '25', '2021-2022', '2')

Select * from dbo.Course

Create Table GradeDetails 
(
	Id int identity (1,1) NOT NULL,
	GradeId nvarchar (10) NULL,
	AchievementTypeId nvarchar (20) NULL,
	AchievementPoints int NULL,
	AchievementMaxPoints int NULL,
	AchievementDate date NULL
	Constraint PK_GradeDetails_Id Primary Key (ID)
)

Insert into dbo.GradeDetails (GradeId, AchievementTypeId, AchievementPoints, AchievementMaxPoints, AchievementDate)
Values ('1', '1', '10', '10', '2022-05-30')

Select * from dbo.GradeDetails

Create Table AchievementType 
(
	Id int identity (1,1) NOT NULL,
	[Name] nvarchar (10) NULL,
	[Description] nvarchar (50) NULL,
	ParticipationRate int NULL,
	Constraint PK_AchievementType_Id Primary Key (ID)
)

Insert into dbo.AchievementType ([Name], [Description], ParticipationRate)
Values ('SQL', 'Passed the class', 100)

Select * from dbo.AchievementType