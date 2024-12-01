DROP TABLE IF EXISTS 'USER';
DROP TABLE IF EXISTS 'GENDER';
DROP TABLE IF EXISTS 'USER_NUTRITIONIST';
DROP TABLE IF EXISTS 'NUTRITIONIST_DETAILS';
DROP TABLE IF EXISTS 'MEMBER_USER';
DROP TABLE IF EXISTS 'MEMBER_DETAILS';
DROP TABLE IF EXISTS 'STAFF_USER';
DROP TABLE IF EXISTS 'STAFF_DETAILS';
DROP TABLE IF EXISTS 'TRAINER_USER';
DROP TABLE IF EXISTS 'TRAINER_DETAILS';
DROP TABLE IF EXISTS 'MEAL_PLAN';
DROP TABLE IF EXISTS 'USER_MEAL_PLAN';
DROP TABLE IF EXISTS 'MEAL';
DROP TABLE IF EXISTS 'WORKOUT_PLAN_DETAILS';
DROP TABLE IF EXISTS 'WORKOUT_PLAN_TRAINER';
DROP TABLE IF EXISTS 'USER_WORKOUT_PLAN';
DROP TABLE IF EXISTS 'EXERCISE';
DROP TABLE IF EXISTS 'DEVICE';
DROP TABLE IF EXISTS 'GYM';
DROP TABLE IF EXISTS 'NOTIFICATION';

CREATE TABLE USER (
    user_id INT UNIQUE PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    height INT NOT NULL,
    weight INT NOT NULL,
    age INT NOT NULL,
    gender_id INT,
    gym_id INT,
    FOREIGN KEY (gym_id) REFERENCES GYM(gym_id),
    FOREIGN KEY (gender_id) REFERENCES GENDER(gender_id)
);

CREATE TABLE GENDER (
    gender_id INT UNIQUE PRIMARY KEY,
    gender_name VARCHAR(100) NOT NULL
);

CREATE TABLE USER_NUTRITIONIST (
    user_id INT PRIMARY KEY,
    nutritionist_number INT UNIQUE,
    FOREIGN KEY (nutritionist_number) REFERENCES NUTRITIONIST_DETAILS(nutritionist_number)
);

CREATE TABLE NUTRITIONIST_DETAILS (
    nutritionist_number INT UNIQUE PRIMARY KEY,
    salary INT NOT NULL
);

CREATE TABLE MEMBER_USER (
    user_id INT PRIMARY KEY,
    associate_number INT UNIQUE,
    FOREIGN KEY (associate_number) REFERENCES MEMBER_DETAILS(associate_number)
);

CREATE TABLE MEMBER_DETAILS (
    associate_number INT UNIQUE PRIMARY KEY,
    joined_date VARCHAR(10) NOT NULL
);


CREATE TABLE STAFF_USER (
    user_id INT PRIMARY KEY,
    staff_number INT UNIQUE,
    FOREIGN KEY (staff_number) REFERENCES STAFF_DETAILS(staff_number)
);

CREATE TABLE STAFF_DETAILS (
    staff_number INT UNIQUE PRIMARY KEY,
    salary INT NOT NULL
);

CREATE TABLE TRAINER_USER (
    user_id INT PRIMARY KEY,
    trainer_number INT UNIQUE,
    FOREIGN KEY (trainer_number) REFERENCES TRAINER_DETAILS(trainer_number)
);

CREATE TABLE TRAINER_DETAILS (
    trainer_number INT PRIMARY KEY,
    salary INT NOT NULL,
    number_of_hours INT NOT NULL,
    number_of_clients INT NOT NULL
);

CREATE TABLE MEAL_PLAN (
    meal_plan_id INT UNIQUE PRIMARY KEY,
    meal_plan_name VARCHAR(100) NOT NULL
);

CREATE TABLE USER_MEAL_PLAN (
    user_id INT,
    meal_plan_id INT,
    FOREIGN KEY (user_id) REFERENCES USER(user_id),
    FOREIGN KEY (meal_plan_id) REFERENCES MEAL_PLAN(meal_plan_id),
    PRIMARY KEY (user_id, meal_plan_id)
);

CREATE TABLE MEAL (
    meal_id INT UNIQUE PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    calories INT NOT NULL,
    proteins INT NOT NULL,
    carbs INT NOT NULL,
    fats INT NOT NULL,
    meal_type VARCHAR(100) NOT NULL,
    meal_plan_id INT,
    FOREIGN KEY (meal_plan_id) REFERENCES MEAL_PLAN(meal_plan_id)
);

CREATE TABLE WORKOUT_PLAN_DETAILS (
    workout_plan_id INT UNIQUE PRIMARY KEY,
    plan_name VARCHAR(100) NOT NULL,
    duration INT NOT NULL,
    days_per_week INT NOT NULL
);

CREATE TABLE WORKOUT_PLAN_TRAINER (
    workout_plan_id INT NOT NULL,
    trainer_number INT NOT NULL,
    PRIMARY KEY (workout_plan_id, trainer_number),
    FOREIGN KEY (workout_plan_id) REFERENCES WORKOUT_PLAN_DETAILS(workout_plan_id),
    FOREIGN KEY (trainer_number) REFERENCES TRAINER_DETAILS(trainer_number)
);

CREATE TABLE USER_WORKOUT_PLAN (
    user_id INT,
    workout_plan_id INT,
    FOREIGN KEY (user_id) REFERENCES USER(user_id),
    FOREIGN KEY (workout_plan_id) REFERENCES WORKOUT_PLAN_DETAILS(workout_plan_id),
    PRIMARY KEY (user_id, workout_plan_id)
);

CREATE TABLE EXERCISE (
    exercise_id INT UNIQUE PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    targeted_body_part VARCHAR(100) NOT NULL,
    sets INT NOT NULL,
    reps INT NOT NULL,
    needed_equipment VARCHAR(100) NOT NULL,
    workout_plan_id INT,
    FOREIGN KEY (workout_plan_id) REFERENCES WORKOUT_PLAN_DETAILS(workout_plan_id)
);

CREATE TABLE DEVICE (
    device_id INT UNIQUE PRIMARY KEY,
    device_name VARCHAR(100) NOT NULL,
    device_brand VARCHAR(100) NOT NULL,
    device_os VARCHAR(100) NOT NULL,
    device_type VARCHAR(100) NOT NULL,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES USER(user_id)
);

CREATE TABLE GYM (
    gym_id INT UNIQUE PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    contact_number VARCHAR(100) NOT NULL
);

CREATE TABLE NOTIFICATION (
    notification_id INT UNIQUE PRIMARY KEY,
    message VARCHAR(100) NOT NULL,
    type VARCHAR(100) NOT NULL,
    status VARCHAR(100) NOT NULL,  
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES USER(user_id)
);