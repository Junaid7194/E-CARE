create database OnlineClinic
create table Doctor(
Doc_Id int not null identity(1,1),
Doc_Name varchar(30),
Doc_Specialist varchar(30),
Doc_Cnic int,
Doc_Contact# int,
)

create table Patient(
Patient_Id int not null identity(1,1),
Patient_Name varchar(30),
Patient_Cnic int,
Patient_BloodGroup varchar(30),
Patient_DOB varchar(30),
Patient_Sex varchar(20),
Patient_Adress varchar(50),
Patient_Contact# int,
)

create table Heart(
Heart_Id int not null identity(1,1),
Heart_Rate varchar(50),
Start_Time varchar(50),
End_Time varchar(50),
[Date] date,
)

create table Physical_Activity(
Activity_Id int not null identity(1,1),
Activity_Date Date(),
Calories varchar(30),
Activity_Timespend varchar(30),
Acitivity_Type varchar(30),
)


create table Nutrition(
Food_Id int not null identity(1,1),
Food_Name varchar(50),
Food_Calories varchar(30),
Food_Protien varchar(30),
Food_Carbohydrates varchar(30),
Food_Cholestrol varchar(30)
)


create table Appointment()