--- Tulis query jawaban pada online editor yang telah disarankan atau sesuai dengan preferensi ###

--- Notes: anda perlu membuat query table data terlebih dahulu dengan memasukkan query di bawah###
-- CREATE TABLE item_bought (
--     buyer TEXT NOT NULL,
--     item TEXT NOT NULL
-- );

-- INSERT INTO item_bought (buyer, item) VALUES
-- ('A', 'Asus'),
-- ('B', 'Lenovo'),
-- ('C', 'Lenovo'),
-- ('D', 'Acer'),
-- ('E', 'Acer'),
-- ('F', 'Acer');

WITH salesreport AS (
    SELECT item, COUNT(*) AS item_count FROM item_bought GROUP BY item
)
SELECT item AS purchase_status
FROM salesreport
WHERE item_count != (SELECT MAX(item_count) FROM salesreport) 
  AND item_count != (SELECT MIN(item_count) FROM salesreport);