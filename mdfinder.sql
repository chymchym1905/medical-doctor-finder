-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2022 at 06:32 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mdfinder`
--
DROP TABLE IF EXISTS appointment;
DROP TABLE IF EXISTS patient;
DROP TABLE IF EXISTS doctor;
DROP TABLE IF EXISTS user;
-- --------------------------------------------------------


CREATE TABLE user (
  id int(32) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id),
  firstname varchar(128) NOT NULL,
  lastname varchar(128) NOT NULL,
  username varchar(128) NOT NULL,
  email varchar(30) NOT NULL,
  password varchar(30) NOT NULL,
  user_type varchar(32) NOT NULL
);



CREATE TABLE doctor (
  md_id int(32) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (md_id),

  md_name varchar(41),
  md_dept varchar(50),
  md_clinic varchar(600),
  md_address varchar(100),
  md_photo varchar(100),
  md_desc varchar(1300),
  md_degree varchar(500),

  user_id int(32),
  FOREIGN KEY (user_id) REFERENCES user(id)
);
--
-- Table structure for table `appointment`

CREATE TABLE patient (
  p_id int(32) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (p_id),
  p_name varchar(12),
  p_dob varchar(8),
  p_desc varchar(12),
  p_address varchar(22),
  user_id int(32),
  FOREIGN KEY (user_id) REFERENCES user(id),
  md_id int(32),
  FOREIGN KEY (md_id) REFERENCES doctor(md_id)
);

--
CREATE TABLE appointment (
  ap_id int(32) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (ap_id),
  ap_date date,
  ap_time time,
  ap_desc varchar(512),
  ap_status varchar(50) NOT NULL,
  p_id int(32) NOT NULL,
  FOREIGN KEY (p_id) REFERENCES patient(p_id),
  md_id int(32) NOT NULL
);

-- -------------------------------------------------------