DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;
DROP TABLE IF EXISTS petPet, petEvent;


CREATE TABLE petPet (
  pet_name varchar(20) PRIMARY KEY,
  pet_owner varchar(45) NOT NULL,
  pet_species varchar(45) NOT NULL,
  pet_gender char(1) NOT NULL,
  pet_birth date NOT NULL,
  pet_death date
  );
  
CREATE TABLE petEvent (
    event_id INT PRIMARY KEY,
    pet_name VARCHAR(20) NOT NULL,
    event_date date ,
    event_type VARCHAR(15) NOT NULL,
    remark varchar(255),
    pet_name_fk VARCHAR(20),
    FOREIGN KEY (pet_name_fk) REFERENCES petPet(pet_name)
);
  
  
