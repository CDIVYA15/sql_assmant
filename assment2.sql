Create database if not exists Schooldb;
Use Schooldb;

Create table Student(
	StdID INT Primary key,
    StdName Varchar(50),
	Sex Varchar(50),
	Percentage INT,
	Class INT,
	Sec Varchar(10),
	Stream Varchar(20),
	DOB date
);

Insert Into Student (StdID,StdName,Sex,Percentage,Class,Sec,Stream,DOB)
Values (1001,"Surekha Joshi","Female",82,12,"A","Science","1998-03-08"),
(1002,"Maahischool Agarwal","Female",56,11,"C","Commerce","2008-11-23"),
(1003,"Sanam Verma","Male",59,11,"C","Commerce","2006-06-29"),
(1004,"Ronit Kumar","Male",63,11,"C","Commerce","1997-11-05"),
(1005,"Dipesh Pulkit","Male",78,11,"B","Science","2003-09-14"),
(1006,"Jahanvi Puri","Female",60,11,"B","Commerce","2008-11-07"),
(1007,"Sanam Kumar","Male",23,12,"F","Commerce","1998-03-08"),
(1008,"Sahil Saras","Male",56,11,"C","Commerce","2008-11-07"),
(1009,"Akshra Agarwal","Female",72,12,"B","Commerce","1996-10-01"),
(1010,"Stuti Mishra","Female",39,11,"F","Science","2008-11-23"),
(1011,"Harsh Agarwal","Male",42,11,"C","Science","1998-03-08"),
(1012,"Nikunj Agarwal","Male",49,12,"C","Commerce","1998-06-28"),
(1013,"Akriti Saxena","Female",89,12,"A","Science","2008-11-23"),
(1014,"Tani Rastogi","Female",82,12,"A","Science","2008-11-23");


#1 To display all the records form STUDENT table.
	SELECT * FROM student ;

#2 To display any name and date of birth from the table STUDENT.
	SELECT StdName, DOB FROM student ;

#3 To display all students record where percentage is greater of equal to 80 FROM student table.
	SELECT * FROM student WHERE percentage >= 80;

#4 To display student name, stream and percentage where percentage of student is more than 80.
	SELECT StdName, Stream, Percentage FROM student WHERE percentage > 80;

#5 To display all records of science students whose percentage is more than 75 form student table.
	SELECT * FROM student WHERE stream = "Science" AND percentage > 75;
