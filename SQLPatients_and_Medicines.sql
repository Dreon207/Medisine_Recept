CREATE DATABASE Patients_and_Medicines
CREATE TABLE Roles 
(
Roles_id INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
Rolename varchar(10) NOT NULL,
)

CREATE TABLE Users 
(
Users_id INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
Roles_id int NOT NULL,
Login varchar (10) NOT NULL,
Pass varchar (16) NOT NULL,
Name varchar (15) NOT NULL,
FOREIGN KEY (Roles_id)
	REFERENCES Roles (Roles_id)
)


CREATE TABLE Medicines 
(
Medicines_id INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
Name_med varchar(20) NOT NULL,
Description varchar (100) NOT NULL,
Expiration_date int NOT NULL,
Date_factory date NOT NULL,
Indications varchar(100) NOT NULL,
Dosage varchar(15) NOT NULL,
Barcode int NOT NULL,
Incompatibility varchar(30)
)

CREATE TABLE Recipes 
(
Recipes_id INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
Name varchar (15) NOT NULL,
Last_name varchar (15) NOT NULL,
Passport_number int NOT NULL,
Date_of_birth date NOT NULL,
Disease varchar(50) NOT NULL,
Description varchar(100) NOT NULL,
Med_one int NOT NULL,
Med_two int NOT NULL,
Med_three int NOT NULL,
Med_four int NOT NULL,
Med_five int NOT NULL,
Med_six int NOT NULL,
Users_id int NOT NULL,
FOREIGN KEY (Med_one)
	REFERENCES Medicines (Medicines_id),
FOREIGN KEY (Med_two)
	REFERENCES Medicines (Medicines_id),
FOREIGN KEY (Med_three)
	REFERENCES Medicines (Medicines_id),
FOREIGN KEY (Med_four)
	REFERENCES Medicines (Medicines_id),
FOREIGN KEY (Med_five)
	REFERENCES Medicines (Medicines_id),
FOREIGN KEY (Med_six)
	REFERENCES Medicines (Medicines_id),
FOREIGN KEY (Users_id)
	REFERENCES Users (Users_id)
)

Insert into Roles
(Rolename)
output 
inserted.Rolename
values
('Админ'),
('Юзер')

Insert into Users
(Login, Roles_id, Pass, Name)
output 
inserted.Login, inserted.Pass, inserted.Name
values
('Adminum','1', '33Rr22x', 'Пётр'),
('Usersi','2', '22Rr33x', 'Антон')

Select * from Users
Select * from Roles
