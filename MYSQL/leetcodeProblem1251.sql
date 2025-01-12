CREATE TABLE Prices (
    product_id INT,
    start_date DATE,
    end_date DATE,
    price DECIMAL(10, 2),
    PRIMARY KEY (product_id, start_date)
);

CREATE TABLE UnitsSold (
    product_id INT,
    purchase_date DATE,
    units INT,
    PRIMARY KEY (product_id, purchase_date)
);

INSERT INTO
    Prices (
        product_id,
        start_date,
        end_date,
        price
    )
VALUES (
        1,
        '2019-02-17',
        '2019-02-28',
        5.00
    ),
    (
        1,
        '2019-03-01',
        '2019-03-22',
        20.00
    ),
    (
        2,
        '2019-02-01',
        '2019-02-20',
        15.00
    ),
    (
        2,
        '2019-02-21',
        '2019-03-31',
        30.00
    );

INSERT INTO
    UnitsSold (
        product_id,
        purchase_date,
        units
    )
VALUES (1, '2019-02-25', 100),
    (1, '2019-03-01', 15),
    (2, '2019-02-10', 200),
    (2, '2019-03-22', 30);

SELECT 
    p.product_id, 
    ROUND(
        COALESCE(SUM(p.price * us.units) / SUM(us.units), 0), 2
    ) AS average_price
FROM 
    Prices p
    LEFT JOIN UnitsSold us 
        ON p.product_id = us.product_id 
        AND us.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY 
    p.product_id;
