create database OnlineClinic
create table Doctor(
Doc_Id int not null identity(1,1) primary key,
Doc_Name varchar(30),
Doc_Speciality varchar(30),
Doc_Cnic int,
Doc_Contact# int,

/*constraint pk_Doc_Id primary key(Doc_Id),*/
)

create table Patient(
Patient_Id int not null identity(1,1) primary key,
Patient_Name varchar(30),
Patient_Cnic int,
Patient_BloodGroup varchar(30),
Patient_DOB varchar(30),
Patient_Sex varchar(20),
Patient_Adress varchar(50),
Patient_Contact# int,
)

create table Gender(
Gender_Id int not null identity(1,1) primary key,
Male varchar(30),
Female varchar(30),
)

create table Heart(
Heart_Id int not null identity(1,1) primary key,
Heart_Rate varchar(50),
[Time] time,
[Date] date,
)

create table Physical_Activity(
Activity_Id int not null identity(1,1) primary key,
Activity_Date date,
Calories varchar(30),
StartTime varchar(30),
EndTime varchar(30),
)

create table Activity_Type(
Activity_TypeId int not null identity(1,1) primary key,
Running varchar(30),
walking varchar(30),
)


create table Nutrition(
Food_Id int not null identity(1,1) primary key,
Food_Name varchar(50),
Food_Calories varchar(30),
Food_Protien varchar(30),
Food_Carbohydrates varchar(30),
Food_Cholestrol varchar(30)
)