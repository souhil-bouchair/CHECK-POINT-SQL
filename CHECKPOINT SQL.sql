CREATE DATABASE GestionEntreprise;


CREATE TABLE GestionEntreprise.dbo.Employes (
	id INT PRIMARY KEY
	nom VARCHAR(100),
	poste VARCHAR(50),
	salaire DECIMAL(10,2)
);

CREATE TABLE GestionEntreprise.dbo.Departement (
	NumS  INT PRIMARY KEY,
	libelle VARCHAR(100),
    Responsable VARCHAR(100)
);

CREATE TABLE GestionEntreprise.dbo.Projet (
	NumP INT PRIMARY KEY,
	Titre VARCHAR (30),
	DateDebut DATE,
	DateFin DATE 
);
GO

CREATE VIEW OLD_Employee_Vue AS
SELECT nom,salaire
FROM  GestionEntreprise.dbo.Employes
WHERE salaire > 5000;
GO

CREATE UNIQUE INDEX responsable_index
ON  GestionEntreprise.dbo.Departement(responsable);

CREATE INDEX responsable2_index
ON  GestionEntreprise.dbo.Departement(responsable,libelle);

ALTER TABLE GestionEntreprise.dbo.Employes 
ADD age INT;

Alter Table Gestiontest.dbo.Employee
ALTER COLUMN Nom VARCHAR(100)

Alter Table Gestiontest.dbo.Employee
DROP COLUMN age;