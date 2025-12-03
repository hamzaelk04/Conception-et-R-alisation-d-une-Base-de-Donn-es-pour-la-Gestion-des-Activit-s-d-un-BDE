CREATE DATABASE gestion_activite
USE gestion_activite

CREATE TABLE evenements(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_membre INT,
    nom VARCHAR(20),
    description TEXT,
    date_event DATE,
    lieu VARCHAR(50),
    budget DECIMAL,
    FOREIGN KEY (id_membre) REFERENCES bde(id)
) ENGINE = INNODB;

CREATE TABLE sponsors(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nom_entreprise VARCHAR(50),
    nom_contact VARCHAR(20),
    email VARCHAR(100)
) ENGINE = INNODB;

CREATE TABLE sponsoring(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_sponsor INT,
    id_event INT,
    montant DECIMAL,
    FOREIGN KEY (id_sponsor) REFERENCES sponsors(id),
    FOREIGN KEY (id_event) REFERENCES evenements(id)
)ENGINE = INNODB;

CREATE TABLE etudiant(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(20) NOT NULL,
    prenom VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL
)ENGINE = INNODB;

CREATE TABLE inscription(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_etudiant INT,
    id_event INT,
    date_ins DATE,
    statut_etudiant VARCHAR(10),
    FOREIGN KEY (id_etudiant) REFERENCES etudiant(id),
    FOREIGN KEY (id_event) REFERENCES evenements(id)
)ENGINE = INNODB;