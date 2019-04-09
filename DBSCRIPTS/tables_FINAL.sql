CREATE TABLE Users_info (
	user_id 			VARCHAR(10),
	user_name		    VARCHAR(10) NOT NULL,
	user_email			VARCHAR(50) NOT NULL,
	user_phone          VARCHAR(50) NOT NULL,
	user_password       VARCHAR(50) NOT NULL,
	
	PRIMARY KEY (user_id),
	UNIQUE(user_email)
);

CREATE TABLE Customer_info (
	customer_id 			VARCHAR(10),
	vip_status              VARCHAR(1),
	PRIMARY KEY (customer_id),
	FOREIGN KEY (customer_id) references Users_info (user_id)
);


CREATE TABLE Pet_info (
	pet_id 			VARCHAR(10),
	pet_type        VARCHAR(6) NOT NULL,
	years           VARCHAR(4),
	PRIMARY KEY (pet_id)
);

CREATE TABLE Cutomer_pet_info(
	customer_id 			VARCHAR(10),
	pet_id 			VARCHAR(10),
	PRIMARY KEY (pet_id),
	FOREIGN KEY (customer_id) REFERENCES Customer_info (customer_id),
	FOREIGN KEY (pet_id) REFERENCES Pet_info (pet_id),
);

CREATE TABLE Owner_info (
	owner_id 			VARCHAR(10),
	user_intro          TEXT NOT NULL,
	date_entered 		DATE NOT NULL,
	owner_img_url       VARCHAR(50) NOT NULL,
	owner_address		VARCHAR(50) NOT NULL,
	owner_states        VARCHAR(50) NOT NULL,
	PRIMARY KEY (owner_id),
	FOREIGN KEY (owner_id) REFERENCES User_info (user_id)
);


CREATE TABLE Appointments (
    appointment_id  VARCHAR(10),
    app_date  		DATE,
    app_time 		TIME,
    status          VARCHAR(10),
    pet_id          VARCHAR(10),
	PRIMARY KEY (appointment_id)
);

CREATE TABLE Owner_appointments (
	owner_id          VARCHAR(10),
	appointment_id    VARCHAR(10),
	PRIMARY KEY (appointment_id),
	FOREIGN KEY owner_id REFERENCES Owner_info(owner_id),
	FOREIGN KEY appointment_id REFERENCES Appointments(appointment_id)
);


CREATE TABLE Customer_appointments (
	customer_id          VARCHAR(10),
	appointment_id    VARCHAR(10),
	PRIMARY KEY (appointment_id),
	FOREIGN KEY customer_id REFERENCES Customer_info(customer_id),
	FOREIGN KEY appointment_id REFERENCES Appointments(appointment_id),
);


CREATE TABLE Reviews (
	review_title	    VARCHAR(50),
	appointment_id      VARCHAR(10),
	ratings             INT,
	PRIMARY KEY (review_title, appointment_id,
	FOREIGN KEY (appointment_id) REFERENCES Appointments (appointment_id) 
	ON DELETE CASCADE,
);


CREATE TABLE Service(
	service_id   VARCHAR(10),
	price        INT,
	date_start   DATE,
	date_end     DATE,
	pet_type     VARCHAR(6),
	house_type   VARCHAR(24),
	years        VARCHAR(4),
	PRIMARY KEY(service_id)
);

CREATE TABLE Owner_service(
	service_id    VARCHAR(10),
	owner_id      VARCHAR(10),
	FOREIGN KEY (service_id) REFERENCES Service (service_id),
	FOREIGN KEY (owner_id) REFERENCES Onwer_info(Owner_id),
	PRIMARY KEY (service_id)
);

CREATE TABLE Owner_states (
	state_name    VARCHAR(14),
	owner_id      VARCHAR(10),
    group_name    VARCHAR(12),
    PRIMARY KEY (owner_id),
    FOREIGN KEY owner_id REFERENCES Owner_info(owner_id)
);

















