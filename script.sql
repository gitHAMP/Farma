INSERT INTO patients (first_name, last_name, dni) VALUES('Henry Antonio', 'Mendoza Puerta', '40738987');
INSERT INTO patients (first_name, last_name, dni) VALUES('John', 'Doe','40738989' );
INSERT INTO patients (first_name, last_name, dni) VALUES('Linus', 'Torvalds', '40738986');
INSERT INTO patients (first_name, last_name, dni) VALUES('Jane', 'Doe','40738985' );
INSERT INTO patients (first_name, last_name, dni) VALUES('Rasmus', 'Lerdorf','40738984' );
INSERT INTO patients (first_name, last_name, dni) VALUES('Erich', 'Gamma', '40738983');
INSERT INTO patients (first_name, last_name, dni) VALUES('Richard', 'Helm','40738982' );
INSERT INTO patients (first_name, last_name, dni) VALUES('Ralph', 'Johnson','40738981' );
INSERT INTO patients (first_name, last_name, dni) VALUES('John', 'Vlissides','40738980' );
INSERT INTO patients (first_name, last_name, dni) VALUES('James', 'Gosling','40738983' );
INSERT INTO patients (first_name, last_name, dni) VALUES('Bruce', 'Lee','40738922' );
INSERT INTO patients (first_name, last_name, dni) VALUES('Johnny', 'Doe', '40738911');
INSERT INTO patients (first_name, last_name, dni) VALUES('John', 'Roe', '40738934');


INSERT INTO medicines (name, price) VALUES('Amoxicilina', 15000);
INSERT INTO medicines (name, price) VALUES('Antalgina', 12300);
INSERT INTO medicines (name, price) VALUES('Trimicot', 14900);
INSERT INTO medicines (name, price) VALUES('Flagyl', 37900);
INSERT INTO medicines (name, price) VALUES('Victoza', 69900);
INSERT INTO medicines (name, price) VALUES('Lincomizina', 69220);
INSERT INTO medicines (name, price) VALUES('Fitomenadionas', 109990);
INSERT INTO medicines (name, price) VALUES('Levamisol', 109920);

INSERT INTO signs (temperature, pulse,respiratory_rhythm,patient_id) VALUES(30.3, 13.00,23.00,1);
INSERT INTO signs (temperature, pulse,respiratory_rhythm,patient_id) VALUES(30.3, 13.00,23.00,2);
INSERT INTO signs (temperature, pulse,respiratory_rhythm,patient_id) VALUES(30.3, 13.00,23.00,3);
INSERT INTO signs (temperature, pulse,respiratory_rhythm,patient_id) VALUES(30.3, 13.00,23.00,4);
INSERT INTO signs (temperature, pulse,respiratory_rhythm,patient_id) VALUES(30.3, 13.00,23.00,5);
INSERT INTO signs (temperature, pulse,respiratory_rhythm,patient_id) VALUES(30.3, 13.00,23.00,6);
INSERT INTO signs (temperature, pulse,respiratory_rhythm,patient_id) VALUES(30.3, 13.00,23.00,7);
INSERT INTO signs (temperature, pulse,respiratory_rhythm,patient_id) VALUES(30.3, 13.00,23.00,8);
INSERT INTO signs (temperature, pulse,respiratory_rhythm,patient_id) VALUES(30.3, 13.00,23.00,9);
INSERT INTO signs (temperature, pulse,respiratory_rhythm,patient_id) VALUES(30.3, 13.00,23.00,10);
INSERT INTO signs (temperature, pulse,respiratory_rhythm,patient_id) VALUES(30.3, 13.00,23.00,11);
INSERT INTO signs (temperature, pulse,respiratory_rhythm,patient_id) VALUES(30.3, 13.00,23.00,12);
INSERT INTO signs (temperature, pulse,respiratory_rhythm,patient_id) VALUES(30.3, 13.00,23.00,13);

INSERT INTO users
    (username, password, enabled)
VALUES
    ('hamp', '$2a$10$Fao0DEw2Jj5oNvRiHavezOh2vwhOXpxHbNYZTfu16STdCSDnJsKl.', true);
INSERT INTO users
    (username, password, enabled)
VALUES
    ('admin', '$2a$10$4dLynIDCFFs1/.hhbXV1Nul6W7HC5iYVF36Xm7CcWOtFHZrK2CmPK', true);

INSERT INTO authorities
    (user_id, authority)
VALUES
    (1, 'ROLE_USER');
INSERT INTO authorities
    (user_id, authority)
VALUES
    (2, 'ROLE_ADMIN');
INSERT INTO authorities
    (user_id, authority)
VALUES
    (2, 'ROLE_USER');