-- Sample data generation
INSERT INTO Language (LanguageName) VALUES ('English'), ('Spanish'), ('French');

INSERT INTO Book (ISBN, Title, Genre, Description) VALUES
('978-3-16-148410-0', 'The Great Book', 'Fiction', 'A fascinating tale of adventure.'),
('978-1-86197-876-9', 'Another Great Book', 'Non-Fiction', 'An insightful exploration of the human condition.');

INSERT INTO BookTranslation (ISBN, LanguageID, Title, Description) VALUES
('978-3-16-148410-0', 1, 'The Great Book', 'A fascinating tale of adventure.'),
('978-3-16-148410-0', 2, 'El Gran Libro', 'Un fascinante cuento de aventura.'),
('978-3-16-148410-0', 3, 'Le Grand Livre', 'Un conte fascinant d\'aventure.');

INSERT INTO Customer (FirstName, LastName, Email, Password) VALUES
('John', 'Doe', 'john.doe@example.com', 'password123'),
('Jane', 'Smith', 'jane.smith@example.com', 'password456');

INSERT INTO Review (ISBN, CustomerID, ReviewText, Rating, ReviewDate) VALUES
('978-3-16-148410-0', 1, 'Amazing book!', 5, '2023-01-01'),
('978-3-16-148410-0', 2, 'Quite interesting.', 4, '2023-02-01');

INSERT INTO Recommendation (ISBN, RecommendedISBN) VALUES
('978-3-16-148410-0', '978-1-86197-876-9'),
('978-1-86197-876-9', '978-3-16-148410-0');

INSERT INTO Price (ISBN, Price, StartDate, EndDate) VALUES
('978-3-16-148410-0', 19.99, '2023-06-01', '2023-06-30'),
('978-3-16-148410-0', 14.99, '2023-07-01', '2023-07-31');

INSERT INTO `Order` (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2023-06-01', 19.99),
(2, '2023-07-01', 14.99);

INSERT INTO OrderDetail (OrderID, ISBN, Quantity, Price) VALUES
(1, '978-3-16-148410-0', 1, 19.99),
(2, '978-3-16-148410-0', 1, 14.99);

INSERT INTO Invoice (OrderID, InvoiceDate, BillingAddress) VALUES
(1, '2023-06-02', '123 Main St'),
(2, '2023-07-02', '456 Elm St');
