CREATE DATABASE Cabinet_Medical;
use Cabinet_Medical;

-- Table MEDECIN
CREATE TABLE Medecin (
    idMedecin INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    specialite VARCHAR(100),
    telephone VARCHAR(20),
    email VARCHAR(100)
);

-- Table PATIENT
CREATE TABLE Patient (
    idPatient INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    dateNaissance DATE,
    adresse VARCHAR(200),
    telephone VARCHAR(20),
    poids DECIMAL(5,2),
    taille DECIMAL(5,2),
    idMedecin INT,
    FOREIGN KEY (idMedecin) REFERENCES Medecin(idMedecin)
);

-- Table ALLERGIE
CREATE TABLE Allergie (
    idAllergie INT AUTO_INCREMENT PRIMARY KEY,
    nomAllergie VARCHAR(100),
    type VARCHAR(50),
    description VARCHAR(200)
);

-- Table MALADIE
CREATE TABLE Maladie (
    idMaladie INT AUTO_INCREMENT PRIMARY KEY,
    nomMaladie VARCHAR(100),
    description VARCHAR(200)
);

-- Table VISITE
CREATE TABLE Visite (
    idVisite INT AUTO_INCREMENT PRIMARY KEY,
    dateVisite DATE,
    motif VARCHAR(200),
    lieu VARCHAR(100),
    gratuite CHAR(1),
    idPatient INT,
    idMedecin INT,
    FOREIGN KEY (idPatient) REFERENCES Patient(idPatient),
    FOREIGN KEY (idMedecin) REFERENCES Medecin(idMedecin)
);

-- Table ANALYSE
CREATE TABLE Analyse (
    idAnalyse INT AUTO_INCREMENT PRIMARY KEY,
    typeAnalyse VARCHAR(100),
    dateDemande DATE,
    dateReception DATE,
    resultat VARCHAR(255),
    laboratoire VARCHAR(100),
    idVisite INT,
    FOREIGN KEY (idVisite) REFERENCES Visite(idVisite)
);

-- Table ORDONNANCE
CREATE TABLE Ordonnance (
    idOrdonnance INT AUTO_INCREMENT PRIMARY KEY,
    dateOrdonnance DATE,
    remarque VARCHAR(200),
    idVisite INT UNIQUE,
    FOREIGN KEY (idVisite) REFERENCES Visite(idVisite)
);

-- Table MEDICAMENT
CREATE TABLE Medicament (
    idMedicament INT AUTO_INCREMENT PRIMARY KEY,
    nomMedicament VARCHAR(150),
    categorie VARCHAR(100),
    description VARCHAR(200)
);

-- Table PRESCRIRE
CREATE TABLE Prescrire (
    idOrdonnance INT,
    idMedicament INT,
    nombrePrises INT,
    doseParPrise VARCHAR(50),
    frequenceJournaliere VARCHAR(50),
    dureeTraitement VARCHAR(50),
    remarques VARCHAR(200),
    PRIMARY KEY (idOrdonnance, idMedicament),
    FOREIGN KEY (idOrdonnance) REFERENCES Ordonnance(idOrdonnance),
    FOREIGN KEY (idMedicament) REFERENCES Medicament(idMedicament)
);

-- Table HOSPITALISATION
CREATE TABLE Hospitalisation (
    idHospitalisation INT AUTO_INCREMENT PRIMARY KEY,
    etablissement VARCHAR(150),
    dateEntree DATE,
    dateSortie DATE,
    operationSubie VARCHAR(200),
    conclusion VARCHAR(200),
    idPatient INT,
    FOREIGN KEY (idPatient) REFERENCES Patient(idPatient)
);

-- Table EST_ALLERGIQUE_A
CREATE TABLE Est_Allergique_A (
    idPatient INT,
    idAllergie INT,
    PRIMARY KEY (idPatient, idAllergie),
    FOREIGN KEY (idPatient) REFERENCES Patient(idPatient),
    FOREIGN KEY (idAllergie) REFERENCES Allergie(idAllergie)
);

-- Table SOUFFRE_DE
CREATE TABLE Souffre_De (
    idPatient INT,
    idMaladie INT,
    PRIMARY KEY (idPatient, idMaladie),
    FOREIGN KEY (idPatient) REFERENCES Patient(idPatient),
    FOREIGN KEY (idMaladie) REFERENCES Maladie(idMaladie)
);