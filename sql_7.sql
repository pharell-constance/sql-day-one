CREATE DATABASE gestion_entreprise;

USE gestion_entreprise;

CREATE TABLE employes(  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    create_time DATETIME COMMENT 'Create Time',
    nom VARCHAR(100)NOT NULL
);

CREATE TABLE departements(  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    create_time DATETIME COMMENT 'Create Time',
    nom_departements VARCHAR(255),
    employe_id INT,
    Foreign Key (employe_id) REFERENCES employes(id)
);

CREATE TABLE projets(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    create_time DATETIME COMMENT 'Create Time',
    titre VARCHAR(100)NOT NULL,
    budget INT
);

CREATE TABLE projets_employe(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'primary key',
    create_time DATETIME COMMENT 'create time',
    employe_id INT,
    project_id INT,
    Foreign Key (employe_id) REFERENCES employes(id),
    Foreign Key (project_id) REFERENCES projets(id)
);

CREATE DATABASE concession_voiture;

use concession_voiture;

CREATE TABLE voitures(  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    create_time DATETIME COMMENT "date d'arrivé en stock",
    marque VARCHAR(100)NOT NULL ,
    modele VARCHAR(100) NOT NULL,
    type_de_carburant VARCHAR(100) NOT NULL,
    puissance INT,
    prix INT,
    catalogue VARCHAR(100),
    numero_de_serie BIGINT UNIQUE,
    etat VARCHAR(100) NOT NULL
);

CREATE TABLE clients(  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    nom VARCHAR(100) NOT NULL,
    voiture_id INT,
    Foreign Key (voiture_id) REFERENCES voiture(id)
);

CREATE TABLE commandes(  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    create_time DATETIME COMMENT 'date de commande',
    montant INT,
    voiture_id INT,
    client_id INT,
    Foreign Key (voiture_id) REFERENCES voiture(id),
    Foreign Key (client_id) REFERENCES clients(id)
);