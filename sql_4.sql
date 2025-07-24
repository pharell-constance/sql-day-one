INSERT INTO auteurs (nom, email)
VALUES  ("George Sand", "gsand@example.com"),
        ("Alexandre Dumas", "adumas@example.com"),
        ("Gustave Flaubert", "gflaubert@example.com"),
        ("Marcel Pagnol", "mpagnol@example.com"),
        ('Victor Hugo', "vhugo@example.com");

SELECT * FROM auteurs

INSERT INTO categorie (nom)
VALUES ("Roman historique"),
("Poésie"),
("Théâtre"),
("Roman réaliste"),
("Littérature jeunesse");

INSERT INTO livres (titre, datecreation, categorie_id, auteurs_id)

VALUES("La Mare au Diable", '1846-01-01', 4, 1 ),
("Indiana","1832-01-01", 4, 1),
("Les Misérables", "1862-01-01",1, 5 ),
("Les Contemplations", "1862-01-01", 2, 5),
("Le Comte de Monte-Cristo", "1845-01-01", 1, 2),
("Les Trois Mousquetaires","1844-01-01", 1, 2),
("Madame Bovary","1857-01-01", 4, 3),
("Salammbô","1862-01-01", 1, 3),
("La Gloire de mon père", "1957-01-01", 5, 4),
("Marius","1929-01-01",3 ,4 );