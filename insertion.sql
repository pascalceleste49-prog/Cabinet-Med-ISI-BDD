USE CabinetMedical;

-- Médecins
INSERT INTO Medecin(nom, prenom, specialite, telephone, email)
VALUES
('Diop','Moussa','Cardiologie','771234567','moussa.diop@gmail.com'),
('Fall','Aminata','Pédiatrie','781112233','aminata.fall@gmail.com');

-- Patients
INSERT INTO Patient(nom, prenom, dateNaissance, adresse, telephone, poids, taille, idMedecin)
VALUES
('Keita','Zeinab','2003-05-10','Dakar','770000001',58.50,1.65,1),
('Ba','Omar','1998-08-22','Thiès','770000002',72.00,1.78,2);

-- Allergies
INSERT INTO Allergie(nomAllergie,type,description)
VALUES
('Pénicilline','Médicament','Allergie aux antibiotiques'),
('Arachide','Aliment','Réaction allergique aux arachides');

-- Maladies
INSERT INTO Maladie(nomMaladie,description)
VALUES
('Diabète','Diabète de type 2'),
('Hypertension','Tension artérielle élevée');

-- Relations Patient-Allergie
INSERT INTO Est_Allergique_A
VALUES
(1,1),
(2,2);

-- Relations Patient-Maladie
INSERT INTO Souffre_De
VALUES
(1,2),
(2,1);

-- Visites
INSERT INTO Visite(dateVisite,motif,lieu,gratuite,idPatient,idMedecin)
VALUES
('2026-07-01','Consultation','Cabinet','N',1,1),
('2026-07-03','Contrôle','Cabinet','O',2,2);

-- Analyses
INSERT INTO Analyse(typeAnalyse,dateDemande,dateReception,resultat,laboratoire,idVisite)
VALUES
('Prise de sang','2026-07-01','2026-07-02','Normal','BioLab',1);

-- Ordonnances
INSERT INTO Ordonnance(dateOrdonnance,remarque,idVisite)
VALUES
('2026-07-01','Repos pendant 5 jours',1);

-- Médicaments
INSERT INTO Medicament(nomMedicament,categorie,description)
VALUES
('Paracétamol','Antalgique','Contre la douleur'),
('Amoxicilline','Antibiotique','Traitement des infections');

-- Prescription
INSERT INTO Prescrire
VALUES
(1,1,3,'500 mg','3 fois/jour','5 jours','Après le repas'),
(1,2,2,'1 comprimé','2 fois/jour','7 jours','Avant le repas');

-- Hospitalisation
INSERT INTO Hospitalisation(etablissement,dateEntree,dateSortie,operationSubie,conclusion,idPatient)
VALUES
('Hôpital Principal','2026-06-20','2026-06-25','Appendicectomie','Guérison',1);
