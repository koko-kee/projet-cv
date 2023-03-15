CREATE TABLE utilisateur (
  id INT(11) NOT NULL AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  password VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE cv (
  id INT(11) NOT NULL AUTO_INCREMENT,
  utilisateur_id INT(11) NOT NULL,
  formation TEXT,
  experience TEXT,
  competences TEXT,
  coordonnees TEXT,
  PRIMARY KEY (id),
  FOREIGN KEY (utilisateur_id) REFERENCES utilisateur(id)
);

CREATE TABLE modeles_cv (
  id INT(11) NOT NULL AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL,
  description TEXT,
  contenu TEXT,
  PRIMARY KEY (id)
);
