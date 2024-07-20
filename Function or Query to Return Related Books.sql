-- Function to get recommended books
CREATE FUNCTION GetRecommendedBooks(isbn VARCHAR(13))
RETURNS TABLE (
    RecommendedISBN VARCHAR(13),
    Title VARCHAR(255),
    Genre VARCHAR(50)
)
BEGIN
    RETURN SELECT r.RecommendedISBN, b.Title, b.Genre
           FROM Recommendation r
           JOIN Book b ON r.RecommendedISBN = b.ISBN
           WHERE r.ISBN = isbn;
END;

-- Example usage:
SELECT * FROM GetRecommendedBooks('978-3-16-148410-0');
