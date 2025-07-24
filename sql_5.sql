SELECT * FROM livres
WHERE datecreation < "1900-01-01";

SELECT * FROM livres
ORDER BY datecreation;

SELECT 
    (datecreation / 10) * 10 AS decennie,
    COUNT(*) AS nb_livres
FROM livres 
GROUP BY (datecreation / 10) * 10
ORDER BY decennie ASC;

 -- Création de la base de données
CREATE DATABASE transport_aerien;

-- Utilisation de la base
USE transport_aerien;

-- Création de la table avions
CREATE TABLE avions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    modele VARCHAR(100) NOT NULL,
    constructeur VARCHAR(100) NOT NULL,
    capacite INT NOT NULL,
    autonomie_km INT NOT NULL,
    en_service BOOLEAN NOT NULL
);

-- Insertion de données
INSERT INTO avions (modele, constructeur, capacite, autonomie_km, en_service) VALUES
('A320', 'Airbus', 180, 6150, TRUE),
('A380', 'Airbus', 853, 15200, TRUE),
('737 MAX', 'Boeing', 210, 6570, TRUE),
('747-400', 'Boeing', 416, 13450, FALSE),
('CSeries 300', 'Bombardier', 160, 6112, TRUE),
('MD-11', 'McDonnell Douglas', 293, 12555, FALSE),
('Concorde', 'Aérospatiale/BAC', 92, 7250, FALSE),
('E190', 'Embraer', 114, 4260, TRUE),
('CRJ900', 'Bombardier', 90, 2956, TRUE),
('Il-96', 'Ilyushin', 262, 11000, FALSE);

SELECT * FROM avion;

SELECT modele, constructeur FROM avions;

SELECT * FROM avions
WHERE capacite > 300;


SELECT * FROM avions
WHERE autonomie_km < 7000;


SELECT * FROM avions
WHERE en_service = 0;


SELECT * FROM avions
WHERE constructeur = "Boeing";


SELECT * FROM avions
where capacite BETWEEN 100 AND 300;

SELECT DISTINCT constructeur FROM avions;

SELECT * FROM avions
ORDER BY capacite;

SELECT * FROM avions
ORDER BY capacite DESC;

SELECT * FROM avions
ORDER BY capacite
LIMIT 3;

SELECT * FROM avions
ORDER BY capacite DESC
LIMIT 5;

SELECT * FROM avions
where autonomie_km BETWEEN 6000 AND 13000;

