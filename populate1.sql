INSERT INTO USER (user_id, name, height, weight, age, gender_id, gym_id) VALUES 
(3, 'Mike Johnson', 185, 75, 32, 1, 1),
(4, 'Sarah Lee', 160, 55, 29, 2, 1),
(5, 'David Kim', 180, 80, 41, 1, 2),
(6, 'Emily Rodriguez', 170, 65, 35, 2, 2),
(7, 'Alex Chen', 190, 85, 28, 1, 3),
(8, 'Rachel Kim', 165, 58, 42, 2, 1),
(9, 'Chris Taylor', 178, 77, 39, 1, 3);

-- Add more gyms
INSERT INTO GYM (gym_id, name, location, contact_number) VALUES 
(2, 'FitZone Gym', '456 Fitness Ave', '+1-800-FIT-ZONE'),
(3, 'PowerHouse Gym', '789 Muscle St', '+1-800-MUSCLE-PH'),
(4, 'Wellness Warriors', '123 Health Blvd', '+1-888-WELLNESS'),
(5, 'Iron Paradise', '321 Strength Road', '+1-877-IRON-GYM');

INSERT INTO NUTRITIONIST (nutritionist_number, user_id, salary, specialization) VALUES 
(2, 2, 55000, 'Vegan Nutrition'),
(3, 4, 58000, 'Sports Nutrition'),
(4, 6, 60000, 'Weight Management'),
(5, 8, 57000, 'Clinical Nutrition'),
(6, 7, 62000, 'Athlete Nutrition');

INSERT INTO MEMBER (associate_number, user_id) VALUES 
(1003, 3),
(1004, 4),
(1005, 5),
(1006, 6),
(1007, 7),
(1008, 8),
(1009, 9);

INSERT INTO STAFF (staff_number, user_id, salary, role) VALUES 
(2002, 3, 42000, 'Personal Trainer Assistant'),
(2003, 4, 38000, 'Gym Receptionist'),
(2004, 5, 45000, 'Equipment Maintenance Specialist'),
(2005, 6, 40000, 'Group Fitness Instructor'),
(2006, 7, 44000, 'Senior Personal Trainer'),
(2007, 8, 37000, 'Nutrition Counselor'),
(2008, 9, 46000, 'Fitness Manager');

INSERT INTO TRAINER (trainer_number, user_id, salary, number_of_hours, number_of_clients, expertise) VALUES 
(3002, 3, 65000, 25, 60, 'Strength Training'),
(3003, 4, 62000, 22, 48, 'Cardiovascular Fitness'),
(3004, 5, 58000, 20, 40, 'Yoga and Pilates'),
(3005, 6, 67000, 28, 55, 'High-Intensity Interval Training'),
(3006, 7, 70000, 30, 65, 'Bodybuilding'),
(3007, 8, 63000, 24, 50, 'Senior Fitness');

INSERT INTO MEAL_PLAN (meal_plan_id, meal_plan_name, diet_type) VALUES 
(3, 'Keto Diet', 'Low-Carb'),
(4, 'Vegetarian Flexitarian', 'Plant-Based'),
(5, 'Intermittent Fasting', 'Time-Restricted Eating'),
(6, 'Mediterranean Diet', 'Balanced Nutrition'),
(7, 'Paleo Diet', 'Whole Foods'),
(8, 'Balanced Athlete', 'Performance Nutrition');

INSERT INTO USER_MEAL_PLAN (user_id, meal_plan_id) VALUES 
(1, 3), 
(2, 4), 
(3, 5), 
(4, 3), 
(5, 4), 
(6, 6),
(7, 7),
(8, 8),
(9, 6);

INSERT INTO MEAL (meal_id, name, calories, proteins, carbs, fats, meal_type, meal_plan_id) VALUES 
(3, 'Grilled Salmon', 300, 35, 10, 15, 'Dinner', 1),
(4, 'Quinoa Salad Bowl', 400, 15, 50, 10, 'Lunch', 2),
(5, 'Greek Yogurt Parfait', 350, 20, 30, 15, 'Breakfast', 3),
(6, 'Grilled Chicken Salad', 350, 30, 15, 20, 'Lunch', 4),
(7, 'Protein Smoothie Bowl', 400, 25, 40, 12, 'Breakfast', 5),
(8, 'Mediterranean Wrap', 380, 20, 35, 18, 'Lunch', 6);

INSERT INTO WORKOUT_PLAN (workout_plan_id, plan_name, duration, days_per_week, trainer_number) VALUES 
(2, 'Weight Loss Program', 45, 4, 3002),
(3, 'Strength Building Routine', 60, 6, 3003),
(4, 'Cardiovascular Fitness Plan', 50, 5, 3004),
(5, 'Body Transformation', 55, 5, 3005),
(6, 'Advanced Muscle Building', 75, 6, 3006),
(7, 'Senior Fitness Program', 40, 3, 3007);

INSERT INTO USER_WORKOUT_PLAN (user_id, workout_plan_id) VALUES 
(1, 2), 
(2, 3), 
(3, 4), 
(4, 2), 
(5, 3),
(6, 5),
(7, 6),
(8, 7),
(9, 5);

INSERT INTO EXERCISE (exercise_id, name, targeted_body_part, sets, reps, needed_equipment, workout_plan_id) VALUES 
(3, 'Lunges', 'Legs', 3, 12, 'Barbell', 1),
(4, 'Pull-ups', 'Back and Arms', 3, 8, 'Gym Equipment', 2),
(5, 'Planks', 'Core', 3, 30, 'Mat', 3),
(6, 'Deadlifts', 'Back and Legs', 4, 10, 'Barbell', 2),
(7, 'Burpees', 'Full Body', 3, 15, 'No Equipment', 5),
(8, 'Seated Rows', 'Back', 3, 12, 'Cable Machine', 4);

INSERT INTO DEVICE (device_id, device_name, device_brand, device_os, device_type, user_id) VALUES 
(2, 'Smart Scale', 'Fitbit', 'iOS', 'Scale', 1),
(3, 'Heart Rate Monitor', 'Garmin', 'Android', 'Wristband', 2),
(4, 'Fitness Tracker', 'Apple', 'iOS', 'Watch', 3),
(5, 'Smart Watch', 'Samsung', 'Android', 'Smartwatch', 4),
(6, 'Blood Pressure Monitor', 'Omron', 'iOS', 'Medical Device', 5),
(7, 'Fitness Band', 'Fitbit', 'Android', 'Wristband', 6);