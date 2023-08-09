CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY
);

CREATE TABLE movies(
    movie_name VARCHAR(50) PRIMARY KEY
)

CREATE TABLE tickets (
    ticket_num SERIAL PRIMARY KEY,
    movie_name VARCHAR(50),
    FOREIGN KEY (movie_name) REFERENCES movies(movie_name),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    seat_num SERIAL CHECK (seat_num <= 50),
    auditorium_num SERIAL CHECK (auditorium_num <=10)
);

ALTER TABLE customer
ADD COLUMN ticket_num INTEGER,
ADD FOREIGN KEY (ticket_num) REFERENCES tickets(ticket_num);

ALTER TABLE tickets
DROP CONSTRAINT IF EXISTS seat_num_check;

ALTER TABLE tickets
ALTER COLUMN seat_num TYPE INTEGER;

ALTER TABLE tickets
ADD CONSTRAINT seat_num_check CHECK (seat_num <= 50);

ALTER TABLE tickets
DROP CONSTRAINT IF EXISTS auditorium_num_check;

ALTER TABLE tickets
ALTER COLUMN auditorium_num TYPE INTEGER;

ALTER TABLE tickets
ADD CONSTRAINT auditorium_num_check CHECK (auditorium_num <= 10);

CREATE TABLE concessions (
    concession_id SERIAL PRIMARY KEY,
    item_name VARCHAR(50),
    cost INTEGER
);



SELECT *
FROM customer