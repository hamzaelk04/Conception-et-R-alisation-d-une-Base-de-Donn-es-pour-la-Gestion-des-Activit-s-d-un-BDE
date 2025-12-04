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


-- Insert data to tables
INSERT INTO etudiant(nom, prenom, email) VALUES
('nom1','prenom1','nomprenom1@gmail.com'),
('nom2','prenom2','nomprenom2@gmail.com'),
('nom3','prenom3','nomprenom3@gmail.com'),
('nom4','prenom4','nomprenom4@gmail.com'),
('nom5','prenom5','nomprenom5@gmail.com'),
('nom6','prenom6','nomprenom6@gmail.com'),
('nom7','prenom7','nomprenom7@gmail.com'),
('nom8','prenom8','nomprenom8@gmail.com'),
('nom9','prenom9','nomprenom9@gmail.com'),
('nom10','prenom10','nomprenom10@gmail.com'),
('nom11','prenom11','nomprenom11@gmail.com'),
('nom12','prenom12','nomprenom12@gmail.com'),
('nom13','prenom13','nomprenom13@gmail.com'),
('nom14','prenom14','nomprenom14@gmail.com'),
('nom15','prenom15','nomprenom15@gmail.com'),
('nom16','prenom16','nomprenom16@gmail.com'),
('nom17','prenom17','nomprenom17@gmail.com'),
('nom18','prenom18','nomprenom18@gmail.com'),
('nom19','prenom19','nomprenom19@gmail.com'),
('nom20','prenom20','nomprenom20@gmail.com');

INSERT INTO sponsors (nom_entreprise, nom_contact, email) VALUES
('entreprise1','nom_contact1','entrepriseemail1@gmail.com'),
('entreprise2','nom_contact2','entrepriseemail2@gmail.com'),
('entreprise3','nom_contact3','entrepriseemail3@gmail.com'),
('entreprise4','nom_contact4','entrepriseemail4@gmail.com'),
('entreprise5','nom_contact5','entrepriseemail5@gmail.com'),
('entreprise6','nom_contact6','entrepriseemail6@gmail.com'),
('entreprise7','nom_contact7','entrepriseemail7@gmail.com'),
('entreprise8','nom_contact8','entrepriseemail8@gmail.com'),
('entreprise9','nom_contact9','entrepriseemail9@gmail.com'),
('entreprise10','nom_contact10','entrepriseemail10@gmail.com'),
('entreprise11','nom_contact11','entrepriseemail11@gmail.com'),
('entreprise12','nom_contact12','entrepriseemail12@gmail.com'),
('entreprise13','nom_contact13','entrepriseemail13@gmail.com'),
('entreprise14','nom_contact14','entrepriseemail14@gmail.com'),
('entreprise15','nom_contact15','entrepriseemail15@gmail.com'),
('entreprise16','nom_contact16','entrepriseemail16@gmail.com'),
('entreprise17','nom_contact17','entrepriseemail17@gmail.com'),
('entreprise18','nom_contact18','entrepriseemail18@gmail.com'),
('entreprise19','nom_contact19','entrepriseemail19@gmail.com'),
('entreprise20','nom_contact20','entrepriseemail20@gmail.com');

INSERT INTO bde (`nom`,`prenom`,`email`,`role`,`date_adhesion`) VALUES
('nom21', 'prenom21', 'nomprenom21@example.com', 'président', '2024-10-01'),
('nom22', 'prenom22', 'nomprenom22@example.com', 'trésorier', '2024-11-15'),
('nom23', 'prenom23', 'nomprenom23@example.com', 'secrétaire', '2024-12-05'),
('nom24', 'prenom24', 'nomprenom24@example.com', 'membre actif', '2025-01-10'),
('nom25', 'prenom25', 'nomprenom25@example.com', 'président', '2025-02-20'),
('nom26', 'prenom26', 'nomprenom26@example.com', 'trésorier', '2025-03-01'),
('nom27', 'prenom27', 'nomprenom27@example.com', 'secrétaire', '2025-04-15'),
('nom28', 'prenom28', 'nomprenom28@example.com', 'membre actif', '2024-10-20'),
('nom29', 'prenom29', 'nomprenom29@example.com', 'président', '2024-11-25'),
('nom30', 'prenom30', 'nomprenom30@example.com', 'trésorier', '2024-12-18'),
('nom31', 'prenom31', 'nomprenom31@example.com', 'secrétaire', '2025-01-22'),
('nom32', 'prenom32', 'nomprenom32@example.com', 'membre actif', '2025-02-05'),
('nom33', 'prenom33', 'nomprenom33@example.com', 'président', '2025-03-12'),
('nom34', 'prenom34', 'nomprenom34@example.com', 'trésorier', '2025-04-25'),
('nom35', 'prenom35', 'nomprenom35@example.com', 'secrétaire', '2024-10-30'),
('nom36', 'prenom36', 'nomprenom36@example.com', 'membre actif', '2024-11-10'),
('nom37', 'prenom37', 'nomprenom37@example.com', 'président', '2024-12-28'),
('nom38', 'prenom38', 'nomprenom38@example.com', 'trésorier', '2025-01-15'),
('nom39', 'prenom39', 'nomprenom39@example.com', 'secrétaire', '2025-02-18'),
('nom40', 'prenom40', 'nomprenom40@example.com', 'membre actif', '2025-03-30');

INSERT INTO evenements (id_membre, nom, description, date_event, lieu, budget) VALUES
(1, 'Event1', 'Hackathon', '2024-10-05', 'lieu1', 5000),
(5, 'Event2', 'Soirée de networking', '2024-10-15', 'lieu3', 2000),
(9, 'Event3', 'Atelier technique', '2024-11-01', 'lieu2', 3500),
(13, 'Event4', 'Compétition sportive', '2024-11-20', 'lieu5', 1500),
(17, 'Event5', 'Hackathon', '2024-12-02', 'lieu4', 4000),
(1, 'Event6', 'Soirée de networking', '2024-12-18', 'lieu2', 2500),
(5, 'Event7', 'Atelier technique', '2025-01-10', 'lieu1', 3000),
(9, 'Event8', 'Compétition sportive', '2025-01-25', 'lieu3', 4500),
(13, 'Event9', 'Hackathon', '2025-02-05', 'lieu5', 2800),
(17, 'Event10', 'Soirée de networking', '2025-02-20', 'lieu4', 2200),
(1, 'Event11', 'Atelier technique', '2025-03-01', 'lieu2', 6000),
(5, 'Event12', 'Compétition sportive', '2025-03-12', 'lieu1', 3200),
(9, 'Event13', 'Hackathon', '2025-03-25', 'lieu5', 3700),
(13, 'Event14', 'Soirée de networking', '2025-04-05', 'lieu3', 1800),
(17, 'Event15', 'Atelier technique', '2025-04-12', 'lieu4', 4100),
(1, 'Event16', 'Compétition sportive', '2025-04-18', 'lieu2', 2300),
(5, 'Event17', 'Hackathon', '2025-04-22', 'lieu5', 5200),
(9, 'Event18', 'Soirée de networking', '2025-04-25', 'lieu1', 3400),
(13, 'Event19', 'Atelier technique', '2025-04-28', 'lieu3', 2700),
(17, 'Event20', 'Compétition sportive', '2025-04-30', 'lieu4', 7000);

INSERT INTO inscription (id_etudiant, id_event, date_ins, statut_etudiant) VALUES
(7, 15, '2025-03-20', 'étudiant actif'),
(12, 3, '2024-10-15', 'invité'),
(19, 8, '2025-01-10', 'diplômé'),
(4, 20, '2025-04-20', 'étudiant actif'),
(16, 1, '2024-09-25', 'invité'),
(2, 11, '2025-02-15', 'diplômé'),
(9, 6, '2024-12-10', 'étudiant actif'),
(14, 18, '2025-04-15', 'invité'),
(1, 13, '2025-03-15', 'diplômé'),
(11, 5, '2024-11-20', 'étudiant actif'),
(20, 9, '2025-01-25', 'invité'),
(5, 2, '2024-10-05', 'diplômé'),
(17, 14, '2025-03-25', 'étudiant actif'),
(8, 7, '2024-12-28', 'invité'),
(3, 19, '2025-04-22', 'diplômé'),
(13, 10, '2025-02-15', 'étudiant actif'),
(6, 16, '2025-04-05', 'invité'),
(15, 12, '2025-03-05', 'diplômé'),
(10, 4, '2024-11-10', 'étudiant actif'),
(18, 17, '2025-04-10', 'invité');

INSERT INTO sponsoring (id_sponsor, id_event, montant) VALUES
(7, 1, 5000),
(12, 2, 2000),
(3, 3, 3500),
(19, 4, 1500),
(5, 5, 4000),
(16, 6, 2500),
(8, 7, 3000),
(2, 8, 4500),
(14, 9, 2800),
(11, 10, 2200),
(20, 11, 6000),
(9, 12, 3200),
(6, 13, 3700),
(17, 14, 1800),
(1, 15, 4100),
(13, 16, 2300),
(4, 17, 5200),
(10, 18, 3400),
(15, 19, 2700),
(18, 20, 7000);

-- Afficher tous les membres du BDE avec leur rôle et leur date d’adhésion.
SELECT nom, prenom, role, date_adhesion FROM bde

-- Lister tous les événements prévus après une date donnée.
SELECT * FROM evenements WHERE date_event > '2024-12-18'

-- Afficher les informations des événements ayant un budget supérieur à 5000 MAD.
SELECT * FROM evenements WHERE budget > 5000

--  Lister les participants inscrits à un événement spécifique.
SELECT evenements.nom, evenements.description, etudiant.nom, etudiant.prenom FROM evenements 
INNER JOIN inscription ON inscription.id_event = evenements.id
INNER JOIN etudiant ON etudiant.id = inscription.id_etudiant
WHERE evenements.nom = 'Event6'