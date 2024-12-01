INSERT INTO USER (user_id, name, height, weight, age, gender_id, gym_id) VALUES 
(1, 'Mike Johnson', 185, 75, 32, 1, 1),
(2, 'Sarah Lee', 160, 55, 29, 2, 1),
(3, 'David Kim', 180, 80, 41, 1, 2),
(4, 'Emily Rodriguez', 170, 65, 35, 2, 2),
(5, 'Alex Chen', 190, 85, 28, 1, 3),
(6, 'Rachel Kim', 165, 58, 42, 2, 1),
(7, 'Chris Taylor', 178, 77, 39, 1, 3);

INSERT INTO GYM (gym_id, name, location, contact_number) VALUES 
(1, 'FitZone Gym', '456 Fitness Ave', '+1-800-FIT-ZONE'),
(2, 'PowerHouse Gym', '789 Muscle St', '+1-800-MUSCLE-PH'),
(3, 'Wellness Warriors', '123 Health Blvd', '+1-888-WELLNESS'),
(4, 'Iron Paradise', '321 Strength Road', '+1-877-IRON-GYM');


INSERT INTO NUTRITIONIST (nutritionist_number, user_id, salary) VALUES 
(2, 2, 55000),
(3, 4, 58000),
(4, 6, 60000),
(5, 8, 57000),
(6, 7, 62000);

INSERT INTO MEMBER (associate_number, user_id) VALUES 
(1001, 1),
(1002, 2),
(1003, 3),
(1004, 4),
(1005, 5),
(1006, 6),
(1007, 7);


INSERT INTO STAFF (staff_number, user_id, salary) VALUES 
(2002, 3, 42000),
(2003, 4, 38000),
(2004, 5, 45000),
(2005, 6, 40000),
(2006, 7, 44000),
(2007, 8, 37000),
(2008, 9, 46000);

INSERT INTO TRAINER (trainer_number, user_id, salary, number_of_hours, number_of_clients) VALUES 
(3002, 3, 65000, 25, 60),
(3003, 4, 62000, 22, 48),
(3004, 5, 58000, 20, 40),
(3005, 6, 67000, 28, 55),
(3006, 7, 70000, 30, 65),
(3007, 8, 63000, 24, 50);

INSERT INTO MEAL_PLAN (meal_plan_id, meal_plan_name) VALUES 
(3, 'Keto Diet'),
(4, 'Vegetarian Flexitarian'),
(5, 'Intermittent Fasting'),
(6, 'Mediterranean Diet'),
(7, 'Paleo Diet'),
(8, 'Balanced Athlete');

INSERT INTO USER_MEAL_PLAN (user_id, meal_plan_id) VALUES 
(1, 1), 
(2, 2), 
(3, 3), 
(4, 1), 
(5, 2), 
(6, 3),
(7, 4);

INSERT INTO MEAL (meal_id, name, calories, proteins, carbs, fats, meal_type, meal_plan_id) VALUES 
(1, 'Grilled Salmon', 300, 35, 10, 15, 'Dinner', 1),
(2, 'Quinoa Salad Bowl', 400, 15, 50, 10, 'Lunch', 2),
(3, 'Greek Yogurt Parfait', 350, 20, 30, 15, 'Breakfast', 3),
(4, 'Grilled Chicken Salad', 350, 30, 15, 20, 'Lunch', 4),
(5, 'Protein Smoothie Bowl', 400, 25, 40, 12, 'Breakfast', 5),
(6, 'Mediterranean Wrap', 380, 20, 35, 18, 'Lunch', 6);

INSERT INTO WORKOUT_PLAN (workout_plan_id, plan_name, duration, days_per_week, trainer_number) VALUES 
(1, 'Weight Loss Program', 45, 4, 3002),
(2, 'Strength Building Routine', 60, 6, 3003),
(3, 'Cardiovascular Fitness Plan', 50, 5, 3004),
(4, 'Body Transformation', 55, 5, 3005),
(5, 'Advanced Muscle Building', 75, 6, 3006),
(6, 'Senior Fitness Program', 40, 3, 3007);

INSERT INTO USER_WORKOUT_PLAN (user_id, workout_plan_id) VALUES 
(1, 1), 
(2, 2), 
(3, 3), 
(4, 1), 
(5, 2),
(6, 4),
(7, 6);

INSERT INTO EXERCISE (exercise_id, name, targeted_body_part, sets, reps, needed_equipment, workout_plan_id) VALUES 
(1, 'Lunges', 'Legs', 3, 12, 'Barbell', 1),
(2, 'Pull-ups', 'Back and Arms', 3, 8, 'Gym Equipment', 2),
(3, 'Planks', 'Core', 3, 30, 'Mat', 3),
(4, 'Deadlifts', 'Back and Legs', 4, 10, 'Barbell', 2),
(5, 'Burpees', 'Full Body', 3, 15, 'No Equipment', 5),
(6, 'Seated Rows', 'Back', 3, 12, 'Cable Machine', 4);

INSERT INTO DEVICE (device_id, device_name, device_brand, device_os, device_type, user_id) VALUES 
(1, 'Smart Scale', 'Fitbit', 'iOS', 'Scale', 1),
(2, 'Heart Rate Monitor', 'Garmin', 'Android', 'Wristband', 2),
(3, 'Fitness Tracker', 'Apple', 'iOS', 'Watch', 3),
(4, 'Smart Watch', 'Samsung', 'Android', 'Smartwatch', 4),
(5, 'Blood Pressure Monitor', 'Omron', 'iOS', 'Medical Device', 5),
(6, 'Fitness Band', 'Fitbit', 'Android', 'Wristband', 6);
