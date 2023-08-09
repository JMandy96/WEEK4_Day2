INSERT INTO movies (movie_name)
VALUES
    ('Oppenheimer'),
    ('Old Boy'),
    ('Spider-Man: Across The Spiderverse'),
    ('Barbie');

INSERT INTO tickets (movie_name, seat_num, auditorium_num)
VALUES
    ('Oppenheimer', 1, 1),
    ('Old Boy', 2, 2),
    ('Barbie', 3, 3);
INSERT INTO tickets (movie_name, seat_num, auditorium_num)
VALUES
    ('Spider-Man: Across The Spiderverse', 1, 10);


INSERT INTO customer (customer_id, ticket_num)
VALUES (1,1), (2,2), (3,3), (4,4);

UPDATE tickets
SET customer_id = 1
WHERE ticket_num = 1;

UPDATE tickets
SET customer_id = 2
WHERE ticket_num = 2;

UPDATE tickets
SET customer_id = 3
WHERE ticket_num = 3;

UPDATE tickets
SET customer_id = 4
WHERE ticket_num = 4;

select *
FROM Tickets

SELECT *
FROM customer


INSERT INTO concessions(
    item_name,
    cost
) VALUES (
    'popcorn',
    6
),(
    'nachos',
    10
);


select *
FROM concessions