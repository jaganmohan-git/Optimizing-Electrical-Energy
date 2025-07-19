show databases;
use electric;
show tables;
select*from users;

CREATE TABLE energy_predictions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    temperature FLOAT,
    humidity FLOAT,
    wind_speed FLOAT,
    solar_radiation FLOAT,
    time_of_day INT,
    day_of_week INT,
    energy_consumption FLOAT,
    peak_hour_indicator INT,
    power_price FLOAT,
    predicted_value FLOAT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
select*from energy_predictions;


GRANT ALL PRIVILEGES ON flask_app.* TO 'root'@'localhost' IDENTIFIED BY 'Jagan@3027';
FLUSH PRIVILEGES;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);
desc users;
INSERT INTO users VALUES (1,'Jagan', 'aithepallijaganmohan@gmail.com', 'qwerty123');