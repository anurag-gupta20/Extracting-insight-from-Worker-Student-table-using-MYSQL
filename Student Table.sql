use assessment;

create table Student_table
(
Std_ID int not null auto_increment,
primary key (Std_ID),
StdName varchar(50),
Sex varchar(50),
Percentage int, 
Class int,
Sec varchar(50),
Stream varchar(50),
DOB Date
);

insert into Student_table (Std_ID, StdName, Sex, Percentage, Class, Sec, Stream, DOB)
values	("1001", "Surekha Joshi", "Female", 82, 12, "A", "Science", "1998-8-3"),
		("1002", "MAAHI AGARWAL", "Female", 56, 11, "C", "Commerce", "2008-11-23"),
        ("1003", "Sanam Verma", "Male", 59, 11, "C", "Commerce", "2006-6-29"),
        ("1004", "Ronit Kumar", "Male", 63, 11, "C", "Commerce", "1997-5-11"),
        ("1005", "Dipesh Pulkit", "Male", 78, 11, "B", "Science", "2003-9-14"),
        ("1006", "JAHANVI Puri", "Female", 60, 11, "B", "Commerce", "2008-7-11"),
        ("1007", "Sanam Kumar", "Male", 23, 12, "F", "Commerce", "1998-8-3"),
        ("1008", "SAHIL SARAS", "Male", 56, 11, "C", "Commerce", "2008-7-11"),
        ("1009", "AKSHRA AGARWAL", "Female", 72, 12, "B", "Commerce", "1996-1-10"),
        ("1010", "STUTI MISHRA", "Female", 39, 11, "F", "Science", "2008-11-23"),
        ("1011", "HARSH AGARWAL", "Male", 42, 11, "C", "Science", "1998-8-3"),
        ("1012", "NIKUNJ AGARWAL", "Male", 49, 12, "C", "Commerce", "1998-6-28"),
        ("1013", "AKRITI SAXENA", "Female", 89, 12, "A", "Science", "2008-11-23"),
        ("1014", "TANI RASTOGI", "Female", 82, 12, "A", "Science", "2008-11-23");
        
# 1 To display all the records form STUDENT table. 

	SELECT * FROM Student_table;

# 2. To display any name and date of birth from the table STUDENT. 

	SELECT StdName, DOB FROM Student_table; 

# 3. To display all students record where percentage is greater of equal to 80 FROM student table. 

	SELECT * FROM Student_table WHERE percentage >= 80; 

# 4. To display student name, stream and percentage where percentage of student is more than 80 

	SELECT StdName, Stream, Percentage FROM Student_table WHERE percentage > 80; 

# 5. To display all records of science students whose percentage is more than 75 form student table. 

	SELECT * FROM Student_table WHERE Stream = "Science" AND percentage > 75;
    