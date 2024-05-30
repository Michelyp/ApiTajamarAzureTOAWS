CREATE TABLE AspNetUsers (
    Id VARCHAR(450) NOT NULL,
    UserName VARCHAR(256) NULL,
    NormalizedUserName VARCHAR(256) NULL,
    Email VARCHAR(256) NULL,
    NormalizedEmail VARCHAR(256) NULL,
    EmailConfirmed BOOLEAN NOT NULL,
    PasswordHash TEXT NULL,
    SecurityStamp TEXT NULL,
    ConcurrencyStamp TEXT NULL,
    PhoneNumber TEXT NULL,
    PhoneNumberConfirmed BOOLEAN NOT NULL,
    TwoFactorEnabled BOOLEAN NOT NULL,
    LockoutEnd DATETIME NULL,
    LockoutEnabled BOOLEAN NOT NULL,
    AccessFailedCount INT NOT NULL,
    PRIMARY KEY (Id)
);

INSERT INTO AspNetUsers (Id, UserName, NormalizedUserName, Email, NormalizedEmail, EmailConfirmed, PasswordHash, SecurityStamp, ConcurrencyStamp, PhoneNumber, PhoneNumberConfirmed, TwoFactorEnabled, LockoutEnd, LockoutEnabled, AccessFailedCount) 
VALUES ('49df6d1a-98ae-4d49-ab22-ff8b31f60af6', 'javier.roca@tajamar365.com', 'JAVIER.ROCA@TAJAMAR365.COM', 'javier.roca@tajamar365.com', 'JAVIER.ROCA@TAJAMAR365.COM', 0, NULL, 'M5ZVJN3GGZRHDEV7PZQZBB7YSG4G2727', '60ad587e-fa60-44eb-9d4c-f8f6acd19de8', NULL, 0, 0, NULL, 1, 0);

INSERT INTO AspNetUsers (Id, UserName, NormalizedUserName, Email, NormalizedEmail, EmailConfirmed, PasswordHash, SecurityStamp, ConcurrencyStamp, PhoneNumber, PhoneNumberConfirmed, TwoFactorEnabled, LockoutEnd, LockoutEnabled, AccessFailedCount) 
VALUES ('bcc07d13-3d8b-4d0d-a308-675da508c1e5', 'javierroca.dev@outlook.com', 'JAVIERROCA.DEV@OUTLOOK.COM', 'javierroca.dev@outlook.com', 'JAVIERROCA.DEV@OUTLOOK.COM', 0, NULL, '4CB4JV7IGHGNO6FENRHGDME4FTMET3B3', '41480086-b2e1-4093-afef-61fe4df9cd1a', NULL, 0, 0, NULL, 1, 0);


CREATE TABLE AspNetUserLogins (
    LoginProvider VARCHAR(128) NOT NULL,
    ProviderKey VARCHAR(128) NOT NULL,
    ProviderDisplayName TEXT NULL,
    UserId VARCHAR(450) NOT NULL,
    PRIMARY KEY (LoginProvider, ProviderKey)
) ENGINE=InnoDB;


INSERT INTO AspNetUserLogins (LoginProvider, ProviderKey, ProviderDisplayName, UserId) 
VALUES ('Microsoft', '18b49a4ba47ad8f6', 'Microsoft', 'bcc07d13-3d8b-4d0d-a308-675da508c1e5');

INSERT INTO AspNetUserLogins (LoginProvider, ProviderKey, ProviderDisplayName, UserId) 
VALUES ('Microsoft', 'ee55b5a5-59d1-41b7-82e9-cdf4e30dbee6', 'Microsoft', '49df6d1a-98ae-4d49-ab22-ff8b31f60af6');

CREATE TABLE `EMPRESAS` (
  `IDEMPRESA` int NOT NULL,
  `NOMBRE` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `LINKEDIN` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `IMAGEN` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `PLAZAS` int DEFAULT NULL,
  `PLAZAS_DISPONIBLES` int DEFAULT NULL,
  PRIMARY KEY (`IDEMPRESA`)
);

INSERT INTO `EMPRESAS` VALUES (1,'Encamina','https://www.linkedin.com/company/encamina/','encamina.jpg',3,1),(2,'Anadat','https://www.linkedin.com/company/anadat-technology/','anadat.jpg',NULL,NULL),(3,'Devoteam','https://www.linkedin.com/company/devoteam/','devoteam.jpg',2,2),(4,'GMV','https://www.linkedin.com/company/gmv/','gmv.jpg',4,1),(5,'Avanade','https://www.linkedin.com/company/avanade/','avanade.jpg',2,2),(6,'Sogeti','https://www.linkedin.com/company/sogeti/','sogeti.jpg',3,0),(7,'DXC','https://www.linkedin.com/company/dxctechnology/','dxc.jpg',1,1),(8,'Minsait','https://www.linkedin.com/company/minsait/','minsait.jpg',6,4),(9,'accenture','https://www.linkedin.com/company/accenture/','accenture.jpg',NULL,NULL),(20,'A','A','A',0,0),(21,'asdf','asdfasd','asd',NULL,2),(22,'tokiota','https://www.linkedin.com/company/tokiota/','tokiota.png',5,5),(23,'indra','https://www.linkedin.com/company/indra/','indra.png',12,12),(24,'amazon','asdfasd','amazon.png',2,2),(25,'google','gooasldfjasdf','google.png',2,2),(26,'openia','adfasdf','openia.png',3,3);



CREATE TABLE `ENTREVISTAS_ALUMNO` (
  `IDENTREVISTA` int NOT NULL,
  `IDALUMNO` int NOT NULL,
  `IDEMPRESA` int NOT NULL,
  `FECHAENTREVISTA` datetime DEFAULT NULL,
  `ESTADO` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDENTREVISTA`),
  CONSTRAINT `chk_estado` CHECK ((`ESTADO` in (_utf8mb4'Aceptada',_utf8mb4'Finalizada',_utf8mb4'En proceso')))
);

INSERT INTO `ENTREVISTAS_ALUMNO` VALUES (1,1,3,'2024-03-20 10:00:00','Finalizada'),(2,2,4,'2024-03-21 14:30:00','En proceso'),(3,5,4,NULL,'Aceptada'),(4,1,5,'2024-03-22 09:45:00','Finalizada'),(5,1,6,'2024-03-20 10:00:00','En proceso'),(6,1,3,'2024-03-19 20:35:00','En proceso'),(7,30,5,'2024-05-18 19:37:00','Aceptada'),(8,30,2,'2024-05-27 19:38:00','Finalizada');



CREATE TABLE `USUARIOSEMPRESAS` (
  `IDUSUARIO` int NOT NULL,
  `IDCLASE` int DEFAULT NULL,
  `NOMBRE` varchar(255) DEFAULT NULL,
  `ROLE` varchar(50) NOT NULL DEFAULT 'alumno',
  `LINKEDIN` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `EMP_1ID` int DEFAULT NULL,
  `EMP_2ID` int DEFAULT NULL,
  `EMP_3ID` int DEFAULT NULL,
  `EMP_4ID` int DEFAULT NULL,
  `EMP_5ID` int DEFAULT NULL,
  `EMP_6ID` int DEFAULT NULL,
  PRIMARY KEY (`IDUSUARIO`)
) ;


INSERT INTO `USUARIOSEMPRESAS` VALUES (2,2825,'Luis','admin','https://www.linkedin.com/in/luis/','luis@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL),(3,2825,'John','admin','https://www.linkedin.com/in/john/','john@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL),(4,2825,'Jaime','admin','https://www.linkedin.com/in/jaime/','jaime@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL),(7,2825,'Mauricio','alumno','https://www.linkedin.com/in/mauricio/','mauricio@gmail.com',8,2,NULL,NULL,NULL,NULL),(8,2825,'Sam','alumno','https://www.linkedin.com/in/sam/','sam@gmail.com',9,2,3,NULL,NULL,NULL),(9,2825,'Candela','alumno','https://www.linkedin.com/in/candela/','candela@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL),(10,2825,'Marta','alumno','https://www.linkedin.com/in/marta/','marta@gmail.com',9,2,3,NULL,NULL,NULL),(11,1212,'Alejandro','alumno','https://www.linkedin.com/in/alejandro/','alejandro@gmail.com',2,7,3,9,NULL,NULL),(13,1212,'Sara','alumno','https://www.linkedin.com/in/sara/','sara@gmail.com',2,7,3,9,NULL,NULL),(15,1212,'Juan','admin','https://www.linkedin.com/in/juan/','juanb@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL),(30,1212,'Javier','Alumno','ddfasdf','javier.roca@tajamar365.com',9,6,NULL,NULL,NULL,NULL),(31,1121,'javid','Admin','aaaaaaaaa','javierroca.dev@outlook.com',NULL,NULL,NULL,NULL,NULL,NULL),(33,1212,'admin','Admin','lñasdkfjañsd','admtajemp1212@outlook.com',NULL,NULL,NULL,NULL,NULL,NULL),(34,1234,'Pepe','Alumno','a','jaime.rodriguez@tajamar365.com',NULL,NULL,NULL,NULL,NULL,NULL);
