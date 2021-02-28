USE master
Drop Database IF EXISTS ITCoachingDB
Go
Create Database ITCoachingDB
Go

ALTER DATABASE ITCoachingDB MODIFY FILE 
(Name=N'ITCoachingDB', Size=50MB, MaxSize=200MB, FileGrowth=5% )
GO

ALTER DATABASE ITCoachingDB MODIFY FILE 
( Name=N'ITCoachingDB_Log', Size = 10MB, MaxSize = 100MB, FileGrowth = 1MB)
GO

Use ITCoachingDB
Go

Create Table Designation
(
DesignationID int identity primary key,
DesignationName varchar(30) not null
);
Go

Create Table Employees
(
EmployeeID int identity primary key,
EmpName varchar(30) not null,
Phone char(30) not null CHECK ((Phone Like '[0][1][0-9][0-9][0-9] [0-9][0-9][0-9] [0-9][0-9][0-9]')),
Email varchar(30) Sparse Null,
[Address] varchar(30),
NIDNumber varchar(30) not null,
JoinData datetime,
DesignationID int Foreign Key REFERENCES Designation(DesignationID)ON UPDATE CASCADE,
ReferenceID int Foreign Key REFERENCES Employees(EmployeeID),
Salary money,
IsActive bit,
TerminationDate datetime,
)
Go

Create Table Course
(
CourseID int Identity Primary Key,
CourseName varchar(30) not null,
CourseDuration varchar(30),
CourseCertification bit,
CoursePrice money,
);
Go


Create Table Schedule
(
ScheduleID int Identity Primary Key,
ScheduleDay varchar(30),
ScheduleTime varchar(30)
)
Go

Create Table CourseTeacher
(
TeacherID int Identity Primary Key,
EmployeeID int Foreign Key REFERENCES Employees(EmployeeID),
CourseID int Foreign Key REFERENCES Course(CourseID)ON DELETE CASCADE
);
Go

Create Table Students
(
StudentID int Identity Primary Key,
StudentName varchar(30) not null,
FatherName varchar(30),
MotherName varchar(30),
Gender varchar(20),
DateOfBirth date,
Phone char(30) not null CHECK ((Phone Like '[0][1][0-9][0-9][0-9] [0-9][0-9][0-9] [0-9][0-9][0-9]')),
Email varchar(30),
[Address] varchar(30),
NIDNumber varchar(30),
GuardianPhone varchar(20)
);
Go

Create Table AdmissionDetails
(
AdmissionID int identity Primary Key,
StudentID int Foreign key REFERENCES Students(StudentID),
CourseID int Foreign Key REFERENCES Course(CourseID),
ScheduleID int Foreign Key REFERENCES Schedule(ScheduleID),
AddmissionDate datetime Not Null CONSTRAINT CN_AddmissionDate DEFAULT (getdate()) CHECK ((AddmissionDate<=getdate()))
)
Go


Create Table Payment
(
PaymentID int Identity,
AdmissionID int Foreign Key REFERENCES AdmissionDetails(AdmissionID),
TotalCoursePrice money,
AmountPaid money,
DueAmount As(TotalCoursePrice - AmountPaid)
);
Go

Create Clustered Index CI_PayID on Payment(PaymentID)
Go

Create NonClustered Index NCI_NID on Employees(NIDNumber)
Go


Alter Table Student
Add BirthCertificate varchar(20);

Alter Table Student
Drop Column BirthCertificate;

Create Table #Guardian
(
GuardianID int identity Primary key,
GuardianName varchar(30),
Phone varchar(30),
Email varchar(30),
StudentID int Foreign Key REFERENCES Students(StudentID)
);
Go

Create Table ##Batch
(
BatchID int Identity Primary Key,
BatchCapacity varchar(10),
CourseID int Foreign Key REFERENCES Course(CourseID)
);
Go

Drop Table #Guardian
Go
Drop Table ##Batch
Go



Create View vw_StudentInfo
With Encryption
AS 
Select StudentID,StudentName,Gender,Phone,Email,[Address],NIDNumber
From Students
Go

Create proc sp_student
@studentid int,
@studentname varchar(30),
@fathername varchar(30),
@mothername varchar(30),
@gender bit,
@dateofbirth date,
@phone char(30),
@email varchar(30),
@address varchar(30),
@nidnumber varchar(30),
@guardiannumber varchar(30),
@operationname varchar(30),
@tablename varchar(30)
As
BEGIN
IF @tablename= 'Students' and @operationname='Insert'
	Begin
		Insert Into Students Values(@studentname,@fathername,@mothername,@gender,@dateofbirth,@phone,@email,@address,@nidnumber,@guardiannumber)
	End
IF @tablename='Students' and @operationname='Update'
	Begin
		Update Students set StudentName=@studentname, Phone=@phone Where StudentID=@studentid
	End
IF @tablename='Students' and @operationname='Delete'
	Begin
		Delete Students Where StudentID=@studentid
	End
IF @tablename='Students' and @operationname='Select'
	Begin
		Select * From Students
	End

END
Go

--Transaction(Commit, Rollback)
Create proc sp_AdmissionDetails
@admissionid int ,
@studentid int,
@courseid int,
@scheduleid int,
@admissiondate datetime,
@message varchar(30) output	 -- For Message Passing
As
Begin
	set nocount on
	Begin Try
		Begin Transaction
			Insert Into AdmissionDetails(StudentID,CourseID,ScheduleID,AdmissionID)
			values (@studentid,@courseid,@scheduleid,@admissiondate)
			set @message='Data Inserted Successfully'
			print @message
		Commit Transaction	-- Permanently Store the table data
	End Try
	Begin Catch
		Rollback transaction	-- Rollback data from the table
		Print 'Something goes wrong !!!!!'
	End Catch
End
Go

Create Table Course_Table_History
(
CourseID int,
CourseName varchar(30) not null,
CourseDuration varchar(30),
CourseCertification bit,
CoursePrice money,
AudtiAction varchar(30),
AuditTimeStamp datetime
)
Go


Create Trigger tr_After_Insert_Course on dbo.Course
For Insert
As
Declare @courseid int, @coursename varchar(30),@courseprice money, @courseduration varchar(30),@coursecerti bit,@auditaction varchar(30)
Select @courseid=i.CourseID from inserted as i;
Select @coursename=i.CourseName from inserted as i;
Select @courseprice=i.CoursePrice from inserted as i;
Select @coursecerti=i.CourseCertification from inserted as i;
Set @auditaction='Row has been Inserted in Course Table';
Insert Into Course_Table_History(CourseID,CourseName,CourseDuration,CourseCertification,CoursePrice,AudtiAction,AuditTimeStamp)
Values(@courseid,@coursename,@courseduration,@coursecerti,@courseprice,@auditaction,getdate());
Print 'After Trigger Fired For Insert'
Go

Create Trigger trg_forupdatedelete on Students
Instead of Update, Delete
AS
Declare @rowcount int
Set @rowcount=@@ROWCOUNT
IF(@rowcount>1)
				BEGIN
				Raiserror('You cannot Update or Delete more than 1 Record',16,1)
				END
Else 
	Print 'Update or Delete Successful'
GO

Create Function fn_tabular_due()
Returns Table
As
Return
(
Select Students.StudentID,StudentName,Phone,Email,GuardianPhone,AdmissionDetails.AdmissionID,CourseID,PaymentID,AddmissionDate
From Students 
Join AdmissionDetails
On Students.StudentID=AdmissionDetails.StudentID
Join Payment
On Payment.AdmissionID=AdmissionDetails.AdmissionID
Where DueAmount is not null
)
Go

Select * From dbo.fn_tabular_due()
Go

Create Function fn_TotalAmount_Get()
Returns money
As
Begin
	Return
	(
	Select Sum(AmountPaid) as [Total Amount Get]
	From Payment
	)
End
Go


Print dbo.fn_TotalAmount_Get()
Go

--Create View With Schemabinding
Create View vw_AdmissionPayment
With Schemabinding
AS
Select AdmissionDetails.AdmissionID,StudentID,CourseID,PaymentID,TotalCoursePrice,AmountPaid,DueAmount
From dbo.AdmissionDetails join dbo.Payment
On AdmissionDetails.AdmissionID=Payment.AdmissionID
Go














