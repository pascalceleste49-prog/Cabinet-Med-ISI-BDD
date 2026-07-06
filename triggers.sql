-- Triggers 1 : Empecher une date de sortie avant la date d'entrée
DELIMITER $$

CREATE TRIGGER trg_DateHospitalisation
BEFORE INSERT ON Hospitalisation
FOR EACH ROW
BEGIN
    IF NEW.dateSortie < NEW.dateEntree THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='La date de sortie doit être postérieure à la date d''entrée';
    END IF;
END$$

DELIMITER ;

--Triggers 2 : Empecher une date de reception avant la date de demande
DELIMITER $$

CREATE TRIGGER trg_DateAnalyse
BEFORE INSERT ON Analyse
FOR EACH ROW
BEGIN
    IF NEW.dateReception < NEW.dateDemande THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='La date de réception est invalide';
    END IF;
END$$

DELIMITER ;

--Triggers 3 : Verifier que le poids est positif
DELIMITER $$

CREATE TRIGGER trg_PoidsPatient
BEFORE INSERT ON Patient
FOR EACH ROW
BEGIN
    IF NEW.poids <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Le poids doit être supérieur à 0';
    END IF;
END$$

DELIMITER ;

--Triggers 4: Vérifier que la taille est positive
DELIMITER $$

CREATE TRIGGER trg_PoidsPatient
BEFORE INSERT ON Patient
FOR EACH ROW
BEGIN
    IF NEW.poids <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Le poids doit être supérieur à 0';
    END IF;
END$$

DELIMITER ;

