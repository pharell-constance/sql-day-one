CREATE TABLE my_first_table(
    id INT AUTO_INCREMENT PRIMARY KEY,
    libelle VARCHAR(100),
    date_creation DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE categorie(  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    nom VARCHAR(100)NOT NULL
);

CREATE TABLE livres(  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    titre VARCHAR(200)NOT NULL,
    datecreation DATETIME DEFAULT CURRENT_TIMESTAMP,
    auteurs_id INT,
    categorie_id INT,
    FOREIGN KEY (auteurs_id) REFERENCES auteurs(id),
    FOREIGN KEY (categorie_id) REFERENCES categorie(id)
);

CREATE TABLE auteurs(  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    nom VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);