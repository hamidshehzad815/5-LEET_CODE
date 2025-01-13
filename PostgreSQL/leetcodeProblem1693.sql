-- Create the DailySales table
CREATE TABLE DailySales (
    date_id DATE NOT NULL,
    make_name VARCHAR(50) NOT NULL,
    lead_id INT NOT NULL,
    partner_id INT NOT NULL
);

-- Insert data into the DailySales table
INSERT INTO DailySales (date_id, make_name, lead_id, partner_id) VALUES
('2020-12-08', 'toyota', 0, 1),
('2020-12-08', 'toyota', 1, 0),
('2020-12-08', 'toyota', 1, 2),
('2020-12-07', 'toyota', 0, 2),
('2020-12-07', 'toyota', 0, 1),
('2020-12-08', 'honda', 1, 2),
('2020-12-08', 'honda', 2, 1),
('2020-12-07', 'honda', 0, 1),
('2020-12-07', 'honda', 1, 2),
('2020-12-07', 'honda', 2, 1);


SELECT DISTINCT date_id,make_name,COUNT(DISTINCT lead_id) as "unique_leads",COUNT(DISTINCT partner_id) as "unique_partners"
FROM `DailySales`
GROUP BY date_id,make_name