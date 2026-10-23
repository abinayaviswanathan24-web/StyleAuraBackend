
INSERT INTO products (id, name, price, old_price, discount, category, image, description, stock)
VALUES
(1, 'Floral Dress', 899.00, 1798.00, NULL, 'Dresses', '/images/floral-dress.jpg', 'Elegant floral dress', 10),
(2, 'Casual Top', 499.00, 899.00, NULL, 'Tops', '/images/casual-top.jpg', 'Comfortable everyday top', 13),
(3, 'Cotton Kurti', 699.00, 1398.00, NULL, 'Kurtis', '/images/kurti.jpg', 'Traditional cotton kurti', 10),
(4, 'Wide Leg Jeans', 999.00, 1499.00, NULL, 'Jeans', '/images/widelegjean.webp', 'Stylish wide leg jeans', 8),
(5, 'Ethnic Suit', 1299.00, 1999.00, NULL, 'Ethnic Wear', '/images/ethnicwearsuit.jpg', 'Beautiful ethnic suit', 0),
(6, 'Smart Casual Jeans', 1099.00, 1599.00, NULL, 'Jeans', '/images/highrisejean.webp', 'Smart casual jeans', 10),
(7, 'Festive Printed Kurti', 799.00, 1299.00, NULL, 'Kurtis', '/images/festive kurti.webp', 'Festive printed kurti', 10),
(8, 'Elegant Floral Midi Dress', 999.00, 1999.00, NULL, 'Dresses', 'photo-1515372039744-b8f02a3ae446', 'Floral midi dress', 10),
(9, 'Classic Black Party Dress', 1299.00, 1999.00, NULL, 'Dresses', 'photo-1539008835657-9e8e9680c956', 'Black party dress', 10),
(10, 'Printed Cotton Kurti', 599.00, 999.00, NULL, 'Kurtis', '/images/printed kurti.jpg', 'Printed cotton kurti', 10),
(11, 'Everyday Straight Kurti', 699.00, 1199.00, NULL, 'Kurtis', '/images/straight kurti.webp', 'Straight kurti', 10),
(12, 'Minimal Everyday Top', 449.00, 899.00, NULL, 'Tops', '/images/minimal everyday top.jpg', 'Everyday top', 10),
(13, 'Chic Puff Sleeve Top', 549.00, 1099.00, NULL, 'Tops', '/images/puffsleeve top.jpg', 'Puff sleeve top', 10),
(14, 'High-Rise Blue Jeans', 999.00, 1499.00, NULL, 'Jeans', '/images/highrisejean.webp', 'High-rise blue jeans', 10),
(15, 'Classic Denim Jeans', 1099.00, 1599.00, NULL, 'Jeans', '/images/widelegjean.webp', 'Classic denim jeans', 10),
(16, 'Elegant Ethnic Suit', 1199.00, 1799.00, NULL, 'Ethnic Wear', '/images/ethnicwearsuit.jpg', 'Elegant ethnic suit', 10),
(17, 'Festive Traditional Outfit', 1499.00, 1999.00, NULL, 'Ethnic Wear', '/images/traditional wear.jpeg', 'Festive traditional outfit', 3),
(18, 'Neutral Co-ord Set', 1199.00, 1599.00, NULL, 'Co-ord Sets', '/images/neutral coord.webp', 'Neutral co-ord set', 10),
(19, 'Casual Two-Piece Set', 999.00, 1299.00, NULL, 'Co-ord Sets', '/images/coord.jpg', 'Casual two-piece set', 10),
(20, 'Everyday Cotton Top', 399.00, 799.00, NULL, 'Tops', '/images/everydaycottontop.webp', 'Everyday cotton top', 10),
(21, 'Festive Printed Kurti', 799.00, 1299.00, NULL, 'Kurtis', '/images/festive kurti.webp', 'Festive printed kurti', 10),
(22, 'Smart Casual Jeans', 1099.00, 1599.00, NULL, 'Jeans', '/images/highrisejean.webp', 'Smart casual jeans', 10),
(23, 'Party Wear Dress', 1499.00, 1999.00, NULL, 'Dresses', 'photo-1566174053879-31528523f8ae', 'Party wear dress', 10)
ON CONFLICT (id) DO NOTHING;
