--- Tulis query jawaban pada online editor yang telah disarankan atau sesuai dengan preferensi ###

--- Notes: anda perlu membuat query table data terlebih dahulu dengan memasukkan query di bawah###
CREATE TABLE employee_table (
    employee TEXT NOT NULL,
    salary INTEGER
);

INSERT INTO employee_table (employee, salary) VALUES
('Alice', 11),
('Benn', 43),
('Charles', 33),
('Dorothy', 55),
('Emma', 22),
('Franklin', 33);

WITH salary_rank AS(
	SELECT salary,
	ROW_NUMBER() OVER (ORDER BY salary) AS ranking
	FROM employee_table
)

SELECT salary FROM salary_rank WHERE ranking = 3;