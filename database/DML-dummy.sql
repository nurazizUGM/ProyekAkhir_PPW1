-- Dummy data for 'users' table
DELETE FROM users;
ALTER TABLE users AUTO_INCREMENT = 1;
INSERT INTO users (name, email, password, address) VALUES 
('John Doe', 'john.doe@dummy.com', 'password123', '123 Main St'),
('Jane Smith', 'jane.smith@dummy.com', 'password456', '456 Elm St'),
('Alice Johnson', 'alice.johnson@dummy.com', 'password789', '789 Maple St');

-- Dummy data for 'category' table
DELETE FROM category;
ALTER TABLE category AUTO_INCREMENT = 1;
INSERT INTO category (category) VALUES 
('Music'),
('Sports'),
('Conferences');

-- Dummy data for 'events' table
DELETE FROM events;
ALTER TABLE events AUTO_INCREMENT = 1;
INSERT INTO events (category_id, created_by, name, description, location, quota, event_date, start_time, end_time, price, image) VALUES
(1, 1, 'Summer Music Festival', 'Join us for a day of live music and fun!', 'Central Park', 500, '2024-07-15', '12:00:00', '23:00:00', 50, 'summer_music_festival.jpg'),
(2, 2, 'Tech Conference 2024', 'A gathering of tech enthusiasts and professionals.', 'Convention Center', 300, '2024-08-20', '09:00:00', '17:00:00', 100, 'tech_conference_2024.jpg'),
(3, 3, 'Photography Workshop', 'Learn the art of photography from experts.', 'Studio XYZ', 20, '2024-09-10', '10:00:00', '16:00:00', 200, 'photography_workshop.jpg'),
(1, 1, 'Spring Music Festival', 'Celebrate the arrival of spring with live music.', 'City Park', 400, '2024-04-20', '11:00:00', '22:00:00', 40, 'spring_music_festival.jpg'),
(2, 2, 'AI Summit 2024', 'Explore the future of artificial intelligence.', 'Tech Hub', 250, '2024-10-05', '08:30:00', '18:30:00', 150, 'ai_summit_2024.jpg'),
(3, 3, 'Cooking Masterclass', 'Learn to cook delicious meals with expert chefs.', 'Culinary Institute', 30, '2024-08-05', '14:00:00', '17:00:00', 80, 'cooking_masterclass.jpg'),
(1, 2, 'Summer Dance Workshop', 'Dance your way into summer with our intensive workshop.', 'Dance Studio A', 50, '2024-06-30', '15:00:00', '19:00:00', 60, 'summer_dance_workshop.jpg'),
(2, 3, 'Blockchain Conference', 'Discover the latest in blockchain technology.', 'Innovation Center', 200, '2024-09-25', '10:00:00', '17:00:00', 120, 'blockchain_conference.jpg'),
(3, 1, 'Art Exhibition', 'Experience a showcase of contemporary art.', 'Art Gallery B', 100, '2024-07-08', '11:00:00', '20:00:00', 30, 'art_exhibition.jpg'),
(1, 2, 'Food Truck Festival', 'Sample a variety of cuisines from food trucks.', 'Event Park', 300, '2024-05-12', '12:00:00', '21:00:00', 20, 'food_truck_festival.jpg'),
(2, 3, 'Virtual Reality Expo', 'Immerse yourself in the world of virtual reality.', 'VR Center', 150, '2024-11-15', '09:30:00', '16:30:00', 90, 'virtual_reality_expo.jpg'),
(3, 1, 'Gardening Workshop', 'Learn gardening tips and tricks from horticulture experts.', 'Community Center', 25, '2024-08-18', '13:00:00', '15:30:00', 50, 'gardening_workshop.jpg'),
(1, 2, 'Fashion Show 2024', 'Witness the latest trends on the runway.', 'Fashion Hall', 180, '2024-09-08', '17:00:00', '22:00:00', 70, 'fashion_show_2024.jpg'),
(2, 3, 'E-commerce Summit', 'Explore the future of online retail.', 'Digital Hub', 280, '2024-10-30', '09:00:00', '18:00:00', 110, 'ecommerce_summit.jpg');
-- Dummy data for 'payment_methods' table
DELETE FROM payment_methods;
ALTER TABLE payment_methods AUTO_INCREMENT = 1;
INSERT INTO payment_methods (provider) VALUES 
('Credit Card'),
('PayPal'),
('Bank Transfer');

-- Dummy data for 'orders' table
DELETE FROM orders;
ALTER TABLE orders AUTO_INCREMENT = 1;
INSERT INTO orders (user_id, event_id, quantity, total_price, payment_method, payment_status) VALUES 
(1, 1, 2, 100, 1, 'PAID'),
(2, 2, 4, 120, 2, 'PENDING'),
(3, 3, 1, 100, 3, 'PAID');
