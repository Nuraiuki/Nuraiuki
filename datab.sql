CREATE TABLE feedback_table (
    id SERIAL PRIMARY KEY,
    user_id INTEGER,
    vacancy_id INTEGER,
    action VARCHAR(255),
    feedback_text TEXT,-=
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users(user_id)
);




CREATE TABLE anketa (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    age BIGINT NOT NULL,
    city VARCHAR(255) NOT NULL,
    gender VARCHAR(20) NOT NULL,
    file_url VARCHAR(255) NOT NULL,
    phone_number VARCHAR(230),
    job VARCHAR(250) NOT NULL,
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);	



CREATE TABLE job_seeker (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),     
    category VARCHAR(255)NOT NULL,
    skill VARCHAR(255)NOT NULL,
	format varchar(255)NOT NULL,
	expirience_j varchar(255)NOT NULL,
	salary varchar(255) NOT NULL
); 

CREATE TABLE employer (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    vacancy_id SERIAL,
    job_title VARCHAR(255),
    company_name VARCHAR(255),
    industry VARCHAR(255),
    skills TEXT,  
    short_description TEXT,
    job_description TEXT,
    salary VARCHAR(255),
    format_e VARCHAR(255),
    expirience_e VARCHAR(255),
    spec VARCHAR(255)
);

create table users(
 user_id BIGINT PRIMARY KEY,
 username VARCHAR(20) UNIQUE NOT NULL, 
 password VARCHAR(255)
);