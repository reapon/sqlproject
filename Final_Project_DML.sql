Use ITCoachingDB
Go

Insert Into Designation Values('Manager'),('Central Manager'),('Teacher'),('Sales Executive'),('Receptionist'),('IT Support'),
('Others');
Go

Insert Into Employees Values('Ashraful Islam','01781 142 010', 'reapon.ctg@gmail', 'Chittagong', '1212414545', '01-01-2019',1,1,25000,1,Null),
('Zahidul Islam','01881 142 010', 'zahid.ctg@gmail', 'Chittagong', '1412414545', '01-02-2019',2,1,24000,1,Null),
('Anisul Islam','01781 520 010', 'ritu@gmail', 'Chittagong', '1212151545', '01-03-2019',3,2,20000,1,Null),
('Tarequl Islam','01981 142 010', 'tarek@gmail', 'Chittagong', '12125454545', '01-03-2019',3,2,22000,1,Null),
('Shohidul Islam','01654 142 010', 'shahid@gmail', 'Chittagong', '1212419292', '01-03-2019',3,1,23000,1,Null),
('Fokrul Islam','01781 951 010', 'fokrul@gmail', 'Sylhet', '1212417171', '01-04-2019',3,2,21000,1,Null),
('Naim Islam','01781 142 525', 'naim@gmail', 'Chittagong', '121852245', '01-05-2019',3,1,20000,1,Null),
('Azizul Islam','01879 142 010', 'aziz@gmail', 'Chittagong', '1717414545', '01-05-2019',3,2,23000,1,Null),
('Kalam Hossain','01545 521 010', 'kala@gmail', 'Chittagong', '1212471747', '01-06-2019',3,2,20000,1,Null),
('Abid Mahmud','01654 152 050', 'abid@gmail', 'Dhaka', '121855555', '01-06-2019',3,2,20000,1,Null),
('Ringkel Barua','01985 142 010', 'ringkel@gmail', 'Chittagong', '1213154545', '01-07-2019',3,1,20000,1,Null),
('Mazhar Pritam','01823 141 080', 'mazhar@gmail', 'Chittagong', '17475514545', '01-08-2019',3,2,24000,1,Null),
('Shawn Aslam','01852 152 010', 'aslam@gmail', 'Chittagong', '1218545545', '01-09-2019',3,2,20000,1,Null),
('Mohammad Aslam','01945 254 010', 'mohammad@gmail', 'Cumilla', '1749714545', '01-10-2019',3,1,22000,1,Null),
('Saeed Sakil','01954 454 110', 'sayed@gmail', 'Chittagong', '1212545545', '01-10-2019',4,1,19000,1,Null),
('Elias Hossain','01987 142 010', 'elias@gmail', 'Noakhali', '145711414545', '01-11-2019',4,2,18000,1,Null),
('Hassan Wahid','01987 684 012', 'hassan@gmail', 'Chittagong', '15155414545', '01-11-2019',5,1,20000,1,Null),
('Iqbal Hossain','01987 254 020', 'iqbal@gmail', 'Chittagong', '19197114545', '01-11-2019',5,2,20000,1,Null),
('Moin Ahmed','01546 142 541', 'moin@gmail', 'Chittagong', '14515414545', '01-11-2019',6,1,24000,1,Null),
('Abul Hassan','01841 254 285', 'abul@gmail', 'Barishal', '1454414545', '01-12-2019',7,2,15000,1,Null)
Go

Insert Into Course Values('MS Office','3 Months', 1, 10000),
('Graphic Design','4 Months', 1, 15000),
('Web Design','2 Months', 1, 12000),
('Web Development','3 Months', 1, 15000),
('C#','6 Months', 1, 30000),
('Python','4 Months', 1, 20000),
('NT','4 Months', 1, 20000),
('Data Base','5 Months', 1, 25000),
('Data Mining','5 Months', 1, 26000),
('Software Engineering','8 Months', 1, 50000),
('MIS','3 Months', 1, 20000),
('PCL','3 Months', 1, 10000)
Go

Insert Into CourseTeacher Values(3,1),(4,2),(5,3),(6,4),(7,5),(8,6),(9,7),(10,8),(11,9),(12,10),(13,11),(14,12)
GO

Insert Into Schedule Values('Sat-Mon-Thu','9AM-11AM'),('Sat-Mon-Thu','11AM-1PM'),('Sat-Mon-Thu','3PM-5PM'),('Sat-Mon-Thu','5PM-7PM'),
('Sun-Tue-Wed','9AM-11AM'),('Sun-Tue-Wed','11AM-1PM'),('Sun-Tue-Wed','3PM-5PM'),('Sun-Tue-Wed','5PM-7PM')
Go


Insert Into Students Values('Naim Mahmud','Hasan Mahmud', 'Anwara Begum','Male','01-12-1990','01784 210 141','nayem@gmail','Chittagong','121414444','01741 241 451'),
('Sheikh Mahmud','Abir Mahmud', 'Hasina Begum','Male','11-06-1992','01485 270 141','sheikh@gmail','Chittagong','12141777','01781 254 478'),
('Arizul Islam','Ashraful Islam', 'Raisa Islam','Male','01-12-1995','01841 987 144','ariz@gmail','Chittagong','121874111','01781 420 010'),
('Hassan Mahmud','Niaj Mahmud', 'Sadia Mahmud','Male','07-04-1994','01951 741 141','hasan@gmail','Dhaka','121498741','01774 541 451'),
('Kajol Islam','Tareque Mahmud', 'Jahanara Begum','Female','05-12-1994','01984 541 141','kajol@gmail','Chittagong','121474411','01741 987 451'),
('Sadia Bristy','Aslam Hamid', 'Kohinur Islam','Female','01-04-1997','01654 274 211','sadia@gmail','Dhaka','121498741','01784 254 987'),
('Israt Jahan','Nur Hossain', 'Monowara Begum','Female','01-11-1999','01314 541 141','israt@gmail','Sylhet','128744555','01987 123 465'),
('Hamid Aslam','Hamid Alam', 'Naima Alam','Male','07-10-1995','01774 951 141','hamid@gmail','Chittagong','1274111455','01987 251 851'),
('Ali Azam','Azam Chy', 'Hamida Chy','Male','09-07-1995','01774 250 741','ali@gmail','Chittagong','1214145144','01987 456 321'),
('Kabir Munna','Hasan Kabir', 'Rokeya Kabir','Male','05-05-1998','01841 260 741','kabir@gmail','Dhaka','12742124','01784 258 741'),
('Niloy Ahmed','Saiful Ahmed', 'Jahanara Ahmed','Male','01-05-1997','01314 274 541','niloy@gmail','Chittagong','1214855544','01987 541 744'),
('Naim Islam','Hasib Islam', 'Achal Islam','Male','09-01-1996','01798 541 184','naimislam@gmail','Chittagong','1219874411','01798 561 987')
Go


Insert Into AdmissionDetails Values(1,1,1,'05-05-2019'),(2,2,2,'05-06-2019'),(3,3,3,'05-07-2019'),(4,4,4,'05-08-2019'),
(5,5,5,'05-09-2019'),(6,6,6,'05-09-2019'),(7,7,7,'05-09-2019'),(8,8,8,'05-09-2019'),(9,9,1,'05-05-2019'),(10,10,2,'05-05-2019'),
(11,11,5,'05-05-2019'),(12,12,4,'05-05-2019')
Go

Insert Into Payment Values(1,10000,5000),(2,15000,7000),(3,12000,5000),(4,15000,7000),(5,30000,15000),(6,20000,10000),(7,20000,10000),
(8,25000,15000),(9,26000,12000),(10,50000,25000),(11,20000,10000),(12,10000,5000)
Go

--Select Value
Select * From Designation
Select * From Employees
Select * From Course
Select * From CourseTeacher
Select * From Schedule
Select * From Students
Select * From AdmissionDetails
Select * From Payment
Go

--Insert
Insert Into Schedule Values('Sat-Mon-Fri','7AM-11AM')
Go

--Update Value
Update Employees
Set IsActive=0,TerminationDate='01-01-2020'
Where EmployeeID=16
Go


--Delete Value
Delete From Schedule Where ScheduleID=9
Go

--Inner Join
Select Students.StudentID,StudentName,Phone,Email,[Address],AddmissionDate,PaymentID,AmountPaid,DueAmount
From Students 
Join AdmissionDetails
On Students.StudentID=AdmissionDetails.StudentID
Join Payment
On AdmissionDetails.AdmissionID=Payment.AdmissionID
Go

--Left Outer Join
Select Employees.EmployeeID,EmpName,Phone,Email,JoinData,Salary,DesignationID,ReferenceID,TeacherID,CourseID
From CourseTeacher
Left Join Employees
On CourseTeacher.EmployeeID=Employees.EmployeeID
Go

--Right Outer Join
Select Schedule.ScheduleID,ScheduleDay,ScheduleTime,AdmissionID,StudentID,CourseID
From Schedule
Right Join AdmissionDetails
On Schedule.ScheduleID=AdmissionDetails.ScheduleID
Go

--Full Outer Join
Select Course.CourseID,CourseName,CourseDuration,CoursePrice,TeacherID,EmployeeID
From Course
Full Join CourseTeacher
On Course.CourseID=CourseTeacher.CourseID
Go

--Cross Join
Select Students.StudentID,StudentName,AdmissionID,CourseID 
From Students
Cross Join AdmissionDetails
Go

--Self Join
Select T.TeacherID,C.EmployeeID,C.CourseID
From CourseTeacher as C,CourseTeacher as T
Where C.CourseID<>T.CourseID
Go

--Union
Select StudentID as STDID From Students
Union 
Select AdmissionID as ADMINID From AdmissionDetails
Go

--Union All
Select EmployeeID From Employees
Union All
Select TeacherID From CourseTeacher
Go


--Cast, Convert, Concatenation
SELECT 'Today : ' + CAST(GETDATE() as varchar)
Go

SELECT 'Today : ' + CONVERT(varchar,GETDATE(),1)
SELECT 'Today : ' + CONVERT(varchar,GETDATE(),2)
SELECT 'Today : ' + CONVERT(varchar,GETDATE(),3)
SELECT 'Today : ' + CONVERT(varchar,GETDATE(),4)
SELECT 'Today : ' + CONVERT(varchar,GETDATE(),5)
SELECT 'Today : ' + CONVERT(varchar,GETDATE(),6)
Go

--6 Basic Clause (Select,From, Where, Having, Group By, Order By
Select CourseName,AdmissionDetails.StudentID,StudentName, Count(*)
From Course
Join AdmissionDetails
ON Course.CourseID=AdmissionDetails.CourseID
Join Students
On AdmissionDetails.StudentID=Students.StudentID
Where ScheduleID is not null
Group By CourseName,AdmissionDetails.StudentID,StudentName
Having Count(*)>0
Order By CourseName
Go


--Distinct
Select Distinct StudentName, FatherName, MotherName,Phone,Email,GuardianPhone 
From Students
Go

--Sub Query
Select * 
From Payment
Where DueAmount in (Select DueAmount From Payment Where DueAmount>5000)
Go

--WildCard
Select *
From Students
Where StudentName Like 'Na__ Mah%'
Go

--Cube, Rollup, Grouping Set
Select AdmissionID,StudentID,Sum(CourseID) as Course
From AdmissionDetails
Group By AdmissionID,StudentID With Cube
Go

Select AdmissionID,StudentID, Sum(CourseID) as Course
From AdmissionDetails
Group By AdmissionID,StudentID With ROLLUP
Go

Select AdmissionID,StudentID, Sum(CourseID) as Course
From AdmissionDetails
Group By Grouping Sets(
(AdmissionID,StudentID,CourseID),
(AdmissionID)
)
Go


--Select Into. Copy Data From Another Table
Select * 
Into #tempPayment
From Payment
Go

Select * From #tempPayment
Go

--Drop Table
Drop Table #tempPayment
Go

--Truncate Table
Truncate Table #tempPayment
Go

--While Loop
Declare @x int
Set @x=5
While @x<=10
Begin
		Print 'Your Provided Value : ' + CAST(@x as Varchar)
		Set @x=@x+1
End
Go

--CTE For Counting How Many Employees are in all Designation
WITH EmpCount(DesignationID,TotalEmployees)
As
(
Select DesignationID, Count(*) as TotalEmployees
From Employees
Group By DesignationID
)
Select DesignationName,TotalEmployees
From Designation
Join EmpCount
On Designation.DesignationID=EmpCount.DesignationID
Order By TotalEmployees
Go

--Case
Select StudentID, CourseID,
	Case CourseID
	When 1 then 'MS Office'
	When 2 then 'Graphic Design'
	When 3 then 'Web Design'
	When 4 then 'Web Development'
	When 5 then 'C#'
	When 6 then 'Python'
	When 7 then 'NT'
	When 8 then 'Data Base'
	When 9 then 'Data Mining'
	When 10 then 'Software Engineering'
	When 11 then 'MIS'
	When 12 then 'PCL'
		Else 'Not In Course'
End	 
From AdmissionDetails
Go

--Operator
Select 10+2 as [Sum]
Go
Select 10-2 as [Substraction]
Go
Select 10*3 as [Multiplication]
Go
Select 10/2 as [Divide]
Go
Select 10%3 as [Remainder]
Go

--Ceiling, Floor, Round
SELECT CEILING(25.75) AS CeilValue;
Go
SELECT FLOOR(55.75) AS FloorValue;
Go
SELECT ROUND(14.75555,0) AS RoundValue;
GO

--Count
SELECT COUNT(CourseID) AS NumberOfCourse FROM Course;
Go












