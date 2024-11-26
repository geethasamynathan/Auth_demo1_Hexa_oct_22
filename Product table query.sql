CREATE TABLE Products (
    id INT PRIMARY KEY identity,
    name VARCHAR(100),
    brand VARCHAR(100),
    description TEXT,
    price DECIMAL(10, 2),
    available_stock INT,
    image VARCHAR(max)
);

INSERT INTO Products (name, brand, description, price, available_stock, image) VALUES
('Laptop X200', 'BrandA', 'High-performance laptop with 16GB RAM and 512GB SSD', 1200.00, 10, 'https://plus.unsplash.com/premium_photo-1681702156223-ea59bfbf1065?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bGFwdG9wfGVufDB8fDB8fHww'),
('Smartphone S10', 'BrandB', 'Latest smartphone with dual camera and 64GB storage', 700.00, 50, 'https://plus.unsplash.com/premium_photo-1680985551009-05107cd2752c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8c21hcnRwaG9uZXxlbnwwfHwwfHx8MA%3D%3D'),
('Wireless Mouse', 'BrandC', 'Ergonomic wireless mouse with adjustable DPI', 25.00, 100, 'https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fG1vdXNlfGVufDB8fDB8fHww'),
('Winter Suit', 'BrandD', 'Warm and comfortable winter suit for cold weather', 150.00, 30, 'https://plus.unsplash.com/premium_photo-1681433594554-f30dcc3d5335?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHdpbnRlciUyMGphY2tldHN8ZW58MHx8MHx8fDA%3D'),
('Projector Pro', 'BrandE', 'High-resolution projector for home and office use', 300.00, 20, 'https://images.unsplash.com/photo-1528395874238-34ebe249b3f2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvamVjdG9yfGVufDB8fDB8fHww'),
('Mechanical Keyboard', 'BrandF', 'Mechanical keyboard with RGB lighting', 80.00, 60, 'https://images.unsplash.com/photo-1561241906-b22ad328e76b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGtleWJvYXJkfGVufDB8fDB8fHww'),
('Tablet T10', 'BrandG', 'Compact tablet with 10-inch display and 32GB storage', 250.00, 40, 'https://plus.unsplash.com/premium_photo-1680371834674-8eccade9b271?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHRhYmxldHxlbnwwfHwwfHx8MA%3D%3D'),
('Smartwatch Series 5', 'BrandH', 'Smartwatch with fitness tracking and notifications', 200.00, 75, 'https://plus.unsplash.com/premium_photo-1712764121254-d9867c694b81?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c21hcnR3YXRjaHxlbnwwfHwwfHx8MA%3D%3D'),
('Bluetooth Speaker', 'BrandI', 'Portable Bluetooth speaker with high-quality sound', 45.00, 120, 'https://images.unsplash.com/photo-1535045366656-4c59fca1dd93?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHNwZWFrZXJ8ZW58MHx8MHx8fDA%3D'),
('Gaming Headset', 'BrandJ', 'Gaming headset with surround sound and noise-cancelling mic', 60.00, 80, 'https://images.unsplash.com/photo-1583305727488-61f82c7eae4b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aGVhZHNldHxlbnwwfHwwfHx8MA%3D%3D'),
('External Hard Drive', 'BrandA', '1TB external hard drive with USB 3.0', 90.00, 55, 'https://plus.unsplash.com/premium_photo-1723618831122-e37b622dc346?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aGFyZGRyaXZlfGVufDB8fDB8fHww'),
('Camera C300', 'BrandB', 'Professional camera with 24MP sensor and 4K video', 850.00, 15, 'https://plus.unsplash.com/premium_photo-1674389991678-0836ca77c7f7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Y2FtZXJhfGVufDB8fDB8fHww'),
('LED Monitor', 'BrandC', '27-inch LED monitor with Full HD resolution', 180.00, 25, 'https://images.unsplash.com/photo-1593640408182-31c70c8268f5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bW9uaXRvcnxlbnwwfHwwfHx8MA%3D%3D'),
('Fitness Tracker', 'BrandD', 'Fitness tracker with heart rate monitor and GPS', 100.00, 70, 'https://plus.unsplash.com/premium_photo-1681433383783-661b519b154a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Zml0bmVzcyUyMHRyYWNrZXJ8ZW58MHx8MHx8fDA%3D'),
('Drone D500', 'BrandE', 'High-performance drone with 4K camera', 600.00, 10, 'https://images.unsplash.com/photo-1473968512647-3e447244af8f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZHJvbmV8ZW58MHx8MHx8fDA%3D'),
('USB Flash Drive', 'BrandF', '64GB USB flash drive with fast data transfer', 20.00, 150, 'https://plus.unsplash.com/premium_photo-1687864551204-4971a6d165a8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Zmxhc2glMjBkcml2ZXxlbnwwfHwwfHx8MA%3D%3D'),
('Wireless Charger', 'BrandG', 'Fast wireless charger for smartphones and tablets', 35.00, 90, 'https://images.unsplash.com/photo-1591290619762-74ad14fa5db4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8d2lyZWxlc3MlMjBjaGFyZ2VyfGVufDB8fDB8fHww'),
('VR Headset', 'BrandH', 'Virtual reality headset with immersive experience', 400.00, 12, 'https://images.unsplash.com/photo-1657734240343-44afa9402985?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8dnIlMjBoZWFkc2V0fGVufDB8fDB8fHww'),
('Smart Home Hub', 'BrandI', 'Smart home hub for controlling connected devices', 120.00, 30, 'https://plus.unsplash.com/premium_photo-1716259490200-e77e7fdccfe4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8c21hcnQlMjBob21lJTIwaHVifGVufDB8fDB8fHww'),
('Laptop Bag', 'BrandJ', 'Durable laptop bag with multiple compartments', 50.00, 50, 'https://images.unsplash.com/photo-1643033998438-38b4211fa2d5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bGFwdG9wJTIwYmFnfGVufDB8fDB8fHww');
