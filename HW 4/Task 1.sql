DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;
DROP TABLE IF EXISTS petPet, petEvent;


CREATE TABLE petPet (
  pet_name varchar(50) NOT NULL,
  pet_owner varchar(50) NOT NULL,
  pet_owner	 varchar(50) NOT NULL,
  pet_species varchar(50) NOT NULL,
  pet_gender char NOT NULL,
  pet_birth int(8) NOT NULL,
  pet_death int(8) NOT NULL
  );
  
CREATE TABLE petEvent (
    event_id INT PRIMARY KEY,
    pet_name VARCHAR(50) NOT NULL,
    event_date int(8) NOT NULL,
    event_type VARCHAR(50) NOT NULL,
    remark TEXT,
    pet_name_fk VARCHAR(50),
    FOREIGN KEY (pet_name_fk) REFERENCES petPet(pet_name)
);
  
  
