DROP TABLE IF EXISTS 'User';
DROP TABLE IF EXISTS 'Gender';
DROP TABLE IF EXISTS 'Nutritionist';
DROP TABLE IF EXISTS 'Member';
DROP TABLE IF EXISTS 'Staff';
DROP TABLE IF EXISTS 'Trainer';
DROP TABLE IF EXISTS 'Meal_Plan';
DROP TABLE IF EXISTS 'User_Meal_Plan';
DROP TABLE IF EXISTS 'Meal';
DROP TABLE IF EXISTS 'Workout_Plan';
DROP TABLE IF EXISTS 'User_Workout_Plan';
DROP TABLE IF EXISTS 'Exercise';
DROP TABLE IF EXISTS 'Device';
DROP TABLE IF EXISTS 'Gym';
DROP TABLE IF EXISTS 'Notification';

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

CREATE TABLE NUTRITIONIST (
    nutritionist_number INT UNIQUE PRIMARY KEY,
    user_id INT,
    salary INT NOT NULL,
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
    FOREIGN KEY (user_id) REFERENCES USER(user_id)
);

CREATE TABLE TRAINER (
    trainer_number INT UNIQUE PRIMARY KEY,
    user_id INT,
    salary INT NOT NULL,
    number_of_hours INT NOT NULL,
    number_of_clients INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES USER(user_id)
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