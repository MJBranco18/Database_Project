INSERT INTO GENDER (gender_id, gender_name) VALUES
(1, 'Male'),
(2, 'Female');

INSERT INTO GYM (gym_id, name, location, contact_number) VALUES 
(1, 'FitZone Gym', '456 Fitness Ave', '+1-800-FIT-ZONE'),
(2, 'PowerHouse Gym', '789 Muscle St', '+1-800-MUSCLE-PH'),
(3, 'Wellness Warriors', '123 Health Blvd', '+1-888-WELLNESS');

INSERT INTO USER (user_id, name, height, weight, age, gender_id, gym_id) VALUES
(1, 'Mike Johnson', 185, 75, 32, 1, 1),
(2, 'Sarah Lee', 160, 55, 29, 2, 1),
(3, 'David Kim', 180, 80, 41, 1, 2),
(4, 'Emily Rodriguez', 170, 65, 35, 2, 2),
(5, 'Alex Chen', 190, 85, 28, 1, 3),
(6, 'Rachel Kim', 165, 58, 42, 2, 1),
(7, 'Chris Taylor', 178, 77, 39, 1, 3);

INSERT INTO NUTRITIONIST_DETAILS (nutritionist_number, salary) VALUES
(1, 50000),
(2, 55000),
(3, 60000);

INSERT INTO USER_NUTRITIONIST (user_id, nutritionist_number) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO MEMBER_DETAILS (associate_number, joined_date) VALUES
(1001, '2022-01-15'),
(1002, '2023-03-22'),
(1003, '2021-11-05');

INSERT INTO MEMBER_USER (user_id, associate_number) VALUES
(1, 1001),
(2, 1002),
(3, 1003);

INSERT INTO STAFF_DETAILS (staff_number, salary) VALUES
(2001, 40000),
(2002, 45000);

INSERT INTO STAFF_USER (user_id, staff_number) VALUES
(1, 2001),
(2, 2002);

INSERT INTO TRAINER_DETAILS (trainer_number, salary, number_of_hours, number_of_clients) VALUES
(3001, 60000, 30, 50),
(3002, 65000, 35, 60);

INSERT INTO TRAINER_USER (user_id, trainer_number) VALUES
(1, 3001),
(2, 3002);

INSERT INTO MEAL_PLAN (meal_plan_id, meal_plan_name) VALUES
(1, 'Keto Diet'),
(2, 'Vegetarian Diet'),
(3, 'Mediterranean Diet');

INSERT INTO USER_MEAL_PLAN (user_id, meal_plan_id) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO MEAL (meal_id, name, calories, proteins, carbs, fats, meal_type, meal_plan_id) VALUES
(1, 'Grilled Salmon', 300, 35, 10, 15, 'Dinner', 1),
(2, 'Quinoa Salad', 400, 12, 45, 12, 'Lunch', 2),
(3, 'Greek Yogurt', 200, 15, 20, 8, 'Breakfast', 3);

INSERT INTO WORKOUT_PLAN_DETAILS (workout_plan_id, plan_name, duration, days_per_week) VALUES
(1, 'Weight Loss Program', 45, 4),
(2, 'Strength Building', 60, 5),
(3, 'Cardio Blast', 30, 3);

INSERT INTO WORKOUT_PLAN_TRAINER (workout_plan_id, trainer_number) VALUES
(1, 3001),
(2, 3002),
(3, 3001);

INSERT INTO USER_WORKOUT_PLAN (user_id, workout_plan_id) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO EXERCISE (exercise_id, name, targeted_body_part, sets, reps, needed_equipment, workout_plan_id) VALUES
(1, 'Push-up', 'Chest', 3, 15, 'None', 1),
(2, 'Squats', 'Legs', 4, 12, 'None', 2),
(3, 'Running', 'Full Body', 1, 30, 'Treadmill', 3);

INSERT INTO DEVICE (device_id, device_name, device_brand, device_os, device_type, user_id) VALUES
(1, 'Smart Scale', 'Fitbit', 'iOS', 'Scale', 1),
(2, 'Heart Rate Monitor', 'Garmin', 'Android', 'Wristband', 2),
(3, 'Fitness Tracker', 'Apple', 'iOS', 'Watch', 3);

INSERT INTO NOTIFICATION (notification_id, message, type, status, user_id) VALUES
(1, 'Your gym membership is about to expire.', 'Reminder', 'Unread', 1),
(2, 'New workout plan available!', 'Update', 'Read', 2),
(3, 'Meal plan updated!', 'Update', 'Unread', 3);
