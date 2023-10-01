/*
-- Creazione della tabella Studenti
CREATE TABLE Studenti (
    studente_id INT PRIMARY KEY,
    nome VARCHAR(50),
    cognome VARCHAR(50),
    corso_id INT
);

-- Inserimento dei dati degli studenti
INSERT INTO Studenti (studente_id, nome, cognome, corso_id)
VALUES (1, 'Giacomo', 'Russo', 503),
       (2, 'Federica', 'Moretti', 504),
       (3, 'Antonio', 'Bianchi', 505),
       (4, 'Elena', 'Martini', 503);

-- Creazione della tabella Corsi
CREATE TABLE Corsi (
    corso_id INT PRIMARY KEY,
    nome_corso VARCHAR(50)
);

-- Inserimento dei dati dei Corsi
INSERT INTO Corsi (corso_id, nome_corso)
VALUES
    (503, 'Chimica'),
    (504, 'Letteratura'),
    (505, 'Biologia');

*/

   SELECT Studenti.nome AS NomeStudente, Corsi.nome_corso AS NomeCorso
FROM Studenti
INNER JOIN Corsi ON Studenti.corso_id = Corsi.corso_id;


/* Questa query LEFT JOIN per ottenere informazioni sugli studenti e, 
 se disponibili, sui corsi a cui sono iscritti */

SELECT Studenti.nome AS NomeStudente, Corsi.nome_corso AS NomeCorso
FROM Studenti
LEFT JOIN Corsi ON Studenti.corso_id = Corsi.corso_id;


/* Questa query RIGHT JOIN ci serve per ottenere informazioni sui corsi e, 
  se disponibili, sugli studenti iscritti a ciascun corso */

SELECT Studenti.nome AS NomeStudente, Corsi.nome_corso AS NomeCorso
FROM Studenti
RIGHT JOIN Corsi ON Studenti.corso_id = Corsi.corso_id;


-- Unione di LEFT JOIN e RIGHT JOIN per ottenere un risultato simile a FULL OUTER JOIN
SELECT Studenti.nome AS NomeStudente, Corsi.nome_corso AS NomeCorso
FROM Studenti
LEFT JOIN Corsi ON Studenti.corso_id = Corsi.corso_id
UNION
SELECT Studenti.nome AS NomeStudente, Corsi.nome_corso AS NomeCorso
FROM Corsi
LEFT JOIN Studenti ON Corsi.corso_id = Studenti.corso_id;



/* Questa query CROSS JOIN serve per ottenere tutte le possibili combinazioni 
 tra studenti e corsi */
SELECT Studenti.nome AS NomeStudente, Corsi.nome_corso AS NomeCorso
FROM Studenti
CROSS JOIN Corsi;
