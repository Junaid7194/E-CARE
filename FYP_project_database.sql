create database OnlineClinic

create table Doctor(
Doc_Id int not null identity(1,1) primary key,
Doc_Name nvarchar(30) not null,
Doc_Specialty nvarchar(30),
Doc_CNIC int,
Doc_Contact# int,
Activity_Id int,
Food_Id int,
Heart_Id int,
/*constraint pk_Doc_Id primary key(Doc_Id),*/
)
Alter table Doctor add constraint Doctor_Activity_Id_FK
Foreign Key (Activity_Id) references Physical_Activity(Activity_Id)

Alter table Doctor add constraint Doctor_Food_Id_FK
Foreign Key (Food_Id) references Nutrition(Food_Id)

Alter table Doctor add constraint Doctor_Heart_Id_FK
Foreign Key (Heart_Id) references Heart(Heart_Id)



create table Patient(
Patient_Id int not null identity(1,1) primary key,
Patient_Name nvarchar(30) not null,
Patient_CNIC int,
Patient_BloodGroup nvarchar(30),
Patient_Age nvarchar(30),
Patient_Adress nvarchar(50),
Patient_Contact# int,
Doc_Id int,
Gender_Id int,
Activity_Id int,
Food_Id int, 
Heart_Id int,
)

Alter table Patient add constraint Patient_Doc_Id_FK
Foreign Key (Doc_Id) references Doctor(Doc_Id)

Alter table Patient add constraint Patient_Gender_Id_FK
Foreign Key (Gender_Id) references Gender(Gender_Id)

Alter table Patient add constraint Patient_Activity_Id_FK
Foreign Key (Activity_Id) references Physical_Activity(Activity_Id)

Alter table Patient add constraint Patient_Food_Id_FK
Foreign Key (Food_Id) references Nutrition(Food_Id)




create table Gender(
Gender_Id int not null identity(1,1) primary key,
Male nvarchar(30),
Female nvarchar(30),
Other nvarchar(30),
)

create table Heart(
Heart_Id int not null identity(1,1) primary key,
Heart_Rate nvarchar(50),
[Time] time,
[Date] date,
)

create table Physical_Activity(
Activity_Id int not null identity(1,1) primary key,
Activity_TypeId int,/*Foreign key*/
Activity_Date date,
Calories nvarchar(30),
StartTime nvarchar(30),
EndTime nvarchar(30),
)

Alter table Physical_Activity add constraint Patient_Activity_Activity_TypeId_FK
Foreign Key (Activity_TypeId) references Activity_Type(Activity_TypeId)

create table Activity_Type(
Activity_TypeId int not null identity(1,1) primary key,
Running nvarchar(30),
walking nvarchar(30),
)


create table Nutrition(
Food_Id int not null identity(1,1) primary key,
Food_Name nvarchar(50) not null,
Food_Calories nvarchar(30),
Food_Protien nvarchar(30),
Food_Carbohydrates nvarchar(30),
Food_Cholestrol nvarchar(30)
)

select * from Doctor
select * from Patient
select * from Gender
select * from Heart
select * from Physical_Activity
select * from Activity_Type
select * from Nutrition
