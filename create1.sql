-- Remove trailing commas
-- Remove unnecessary quotes
-- Fix syntax errors

DROP TABLE IF EXISTS USER;
DROP TABLE IF EXISTS GENDER;
DROP TABLE IF EXISTS NUTRITIONIST;
DROP TABLE IF EXISTS MEMBER;
DROP TABLE IF EXISTS STAFF;
DROP TABLE IF EXISTS TRAINER;
DROP TABLE IF EXISTS MEAL_PLAN;
DROP TABLE IF EXISTS USER_MEAL_PLAN;
DROP TABLE IF EXISTS MEAL;
DROP TABLE IF EXISTS WORKOUT_PLAN;
DROP TABLE IF EXISTS USER_WORKOUT_PLAN;
DROP TABLE IF EXISTS EXERCISE;
DROP TABLE IF EXISTS DEVICE;
DROP TABLE IF EXISTS GYM;
DROP TABLE IF EXISTS NOTIFICATION;

CREATE TABLE GENDER (
    gender_id INT UNIQUE PRIMARY KEY,
    gender_name VARCHAR(100) NOT NULL
);

CREATE TABLE GYM (
    gym_id INT UNIQUE PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    contact_number VARCHAR(100) NOT NULL
);

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

CREATE TABLE NUTRITIONIST (
    nutritionist_number INT UNIQUE PRIMARY KEY,
    user_id INT,
    salary INT NOT NULL,
    specialization VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES USER(user_id)
);

CREATE TABLE MEMBER (
    associate_number INT UNIQUE PRIMARY KEY,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES USER(user_id)
);

CREATE TABLE STAFF (
    staff_number INT UNIQUE PRIMARY KEY,
    user_id INT,
    salary INT NOT NULL,
    role VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES USER(user_id)
);

CREATE TABLE TRAINER (
    trainer_number INT UNIQUE PRIMARY KEY,
    user_id INT,
    salary INT NOT NULL,
    number_of_hours INT NOT NULL,
    number_of_clients INT NOT NULL,
    expertise VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES USER(user_id)
);

CREATE TABLE MEAL_PLAN (
    meal_plan_id INT UNIQUE PRIMARY KEY,
    meal_plan_name VARCHAR(100) NOT NULL,
    diet_type VARCHAR(100)
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

CREATE TABLE WORKOUT_PLAN (
    workout_plan_id INT UNIQUE PRIMARY KEY,
    plan_name VARCHAR(100) NOT NULL,
    duration INT NOT NULL,
    days_per_week INT NOT NULL,
    trainer_number INT,
    FOREIGN KEY (trainer_number) REFERENCES TRAINER(trainer_number)
);

CREATE TABLE USER_WORKOUT_PLAN (
    user_id INT,
    workout_plan_id INT,
    FOREIGN KEY (user_id) REFERENCES USER(user_id),
    FOREIGN KEY (workout_plan_id) REFERENCES WORKOUT_PLAN(workout_plan_id),
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
    FOREIGN KEY (workout_plan_id) REFERENCES WORKOUT_PLAN(workout_plan_id)
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

CREATE TABLE NOTIFICATION (
    notification_id INT UNIQUE PRIMARY KEY,
    message VARCHAR(100) NOT NULL,
    type VARCHAR(100) NOT NULL,
    status VARCHAR(100) NOT NULL,  
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES USER(user_id)
);