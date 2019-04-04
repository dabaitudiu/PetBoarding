CREATE TABLE AdvClient (
	clientid 		VARCHAR(10),
	advid 			VARCHAR(50),
	PRIMARY KEY (clientid) 
);

CREATE TABLE Advertisment (
	advid 			VARCHAR(10),
	clientid 	 	VARCHAR(10),
	prod_name       VARCHAR(30) NOT NULL, 
	slogan          VARCHAR(100)
	PRIMARY KEY (advid),
	FOREIGN KEY (clientid) references AdvClient (clientid)
);
 
CREATE TABLE Region (
	postal_code     VARCHAR(10),
	city            VARCHAR(50),
	PRIMARY KEY (postal_code)
);

CREATE TABLE Users (
	uid 			VARCHAR(10),
	username		VARCHAR(10) NOT NULL,
	email			VARCHAR(50) NOT NULL,
	pwd             VARCHAR(50) NOT NULL,
	postal_code     VARCHAR(10) NOT NULL,
	PRIMARY KEY (Uid),
	FOREIGN KEY (postal_code) REFERENCES Region (postal_code)
	UNIQUE(email)
);

CREATE TABLE PetOwner (
	uid 			VARCHAR(10),
	PRIMARY KEY (uid),
	FOREIGN KEY (uid) references Users (uid)
);

CREATE TABLE Uploads (
	uid 			VARCHAR(10),
	photoid  		VARCHAR(10),
	PRIMARY KEY (uid, photoid),
	FOREIGN KEY (uid) references PetOwner (uid),
	FOREIGN KEY (photoid) references Photo (photoid)
);

CREATE TABLE Photo (
	photoid  		VARCHAR(10),
	PRIMARY KEY (photoid) 
);

CREATE TABLE Pet (
	petid 			VARCHAR(10),
	species         VARCHAR(15) NOT NULL,
	PRIMARY KEY (petid),
);

CREATE TABLE OwnsPet(
	uid 			VARCHAR(10),
	petid 			VARCHAR(10),
	PRIMARY KEY (uid, petid),
	FOREIGN KEY (uid) REFERENCES PetOwner (uid),
	FOREIGN KEY (peiid) REFERENCES Pet (petid),
);

CREATE TABLE PetSitter (
	uid 			VARCHAR(10),
	PRIMARY KEY (uid),
	FOREIGN KEY (uid) REFERENCES Users (uid)
);

CREATE TABLE Property (
	propertyid      VARCHAR(10),
	propertyType    VARCHAR(10),
	
);

CREATE TABLE Appointment (
    apptid              VARCHAR(50),
	petOwnerid 			VARCHAR(50),
	petSitterid         VARCHAR(50),
	start_date          DATE NOT NULL,     
	end_date            DATE NOT NULL,
	activity_type            VARCHAR(50),
	transaction_amount  INTEGER,
	PRIMARY KEY (apptid),
	FOREIGN KEY (petOwnerid) REFERENCES PetOwner (uid),
	FOREIGN KEY (petSitterid) REFERENCES PetSitter (uid)
);

CREATE TABLE Reviews (
	reviewid	     VARCHAR(50),
	apptid           VARCHAR(50),
	review_content   VARCHAR(300),
	PRIMARY KEY (reviewid)
	FOREIGN KEY (apptid) REFERENCES Appointment (apptid),
);


CREATE TABLE Service();

CREATE TABLE OwnsProperty ();

CREATE TABLE Package();


