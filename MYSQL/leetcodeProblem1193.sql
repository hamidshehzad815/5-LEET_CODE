CREATE TABLE Transaction (
    id INT PRIMARY KEY,
    country VARCHAR(2),
    state VARCHAR(10),
    amount DECIMAL(10, 2),
    trans_date DATE
);

DROP Table `Transaction`;

INSERT INTO
    Transaction (
        id,
        country,
        state,
        amount,
        trans_date
    )
VALUES (
        121,
        'US',
        'approved',
        1000.00,
        '2018-12-18'
    ),
    (
        122,
        'US',
        'declined',
        2000.00,
        '2018-12-19'
    ),
    (
        123,
        'US',
        'approved',
        2000.00,
        '2019-01-01'
    ),
    (
        124,
        NULL,
        'approved',
        2000.00,
        '2019-01-07'
    );

INSERT INTO
    Transaction (
        id,
        country,
        state,
        amount,
        trans_date
    )
VALUES (
        121,
        'US',
        'approved',
        1000.00,
        '2018-12-18'
    ),
    (
        122,
        'US',
        'declined',
        2000.00,
        '2018-12-19'
    ),
    (
        123,
        'US',
        'approved',
        2000.00,
        '2019-01-01'
    ),
    (
        124,
        'DE',
        'approved',
        2000.00,
        '2019-01-07'
    );

SELECT
    DATE_FORMAT(trans_date, '%Y-%m') AS month,
    country,
    COUNT(state) as trans_count,
    sum(
        case
            when state = 'approved' then 1
            else 0
        end
    ) as approved_count,
    ROUND(sum(amount), 0) as trans_total_amount,
    ROUND(
        sum(
            case
                when state = 'approved' then amount
                else 0
            end
        ),
        0
    ) as approved_total_amount
FROM `Transaction`
GROUP BY
    DATE_FORMAT(trans_date, '%Y-%m'),
    country;

SELECT
    LEFT(trans_date, 7) AS month,
    country,
    COUNT(id) AS trans_count,
    SUM(state = 'approved') AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM((state = 'approved') * amount) AS approved_total_amount
FROM Transactions
GROUP BY
    month,
    country;