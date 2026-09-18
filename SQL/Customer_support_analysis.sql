SELECT * FROM validated_cs_data;
SELECT COUNT(*) AS total_rows
FROM validated_cs_data;
SELECT
    COUNT(*) AS total_tickets,
    SUM(`Ticket Status` = 'Closed') AS closed_tickets,
    SUM(`Ticket Status` <> 'Closed') AS open_pending_tickets,
    ROUND(100 * AVG(`Ticket Status` = 'Closed'), 2) AS closure_rate_pct,
    ROUND(
        AVG(NULLIF(`Validated_CSAT`, 'No Response')),
        2
    ) AS avg_csat,
    ROUND(
        100 * SUM(`Validated_CSAT` <> 'No Response') / COUNT(*),
        2
    ) AS csat_response_rate_pct,
    SUM(
        `Ticket Status` <> 'Closed'
        AND `Ticket Priority` IN ('High', 'Critical')
    ) AS high_critical_open_pending
FROM validated_cs_data;
SELECT
    `Product_Category` AS product_category,
    COUNT(*) AS tickets,
    ROUND(
        AVG(NULLIF(`Validated_CSAT`, 'No Response')),
        2
    ) AS avg_csat,
    ROUND(
        100 * AVG(
            CASE
                WHEN `Validated_CSAT` IN ('1','2') THEN 1
                WHEN `Validated_CSAT` IN ('3','4','5') THEN 0
                ELSE NULL
            END
        ),
        1
    ) AS low_csat_pct
FROM validated_cs_data
GROUP BY `Product_Category`
ORDER BY tickets DESC;
SELECT
    `Ticket Type` AS ticket_type,
    COUNT(*) AS tickets,
    ROUND(
        AVG(NULLIF(`Validated_CSAT`, 'No Response')),
        2
    ) AS avg_csat,
    ROUND(
        100 * AVG(
            CASE
                WHEN `Validated_CSAT` IN ('1','2') THEN 1
                WHEN `Validated_CSAT` IN ('3','4','5') THEN 0
                ELSE NULL
            END
        ),
        1
    ) AS low_csat_pct
FROM validated_cs_data
GROUP BY `Ticket Type`
ORDER BY low_csat_pct DESC;
SELECT
    `Ticket Channel` AS channel,
    COUNT(*) AS tickets,
    ROUND(
        AVG(NULLIF(`Validated_CSAT`, 'No Response')),
        2
    ) AS avg_csat,
    ROUND(
        100 * AVG(
            CASE
                WHEN `Validated_CSAT` IN ('1','2') THEN 1
                WHEN `Validated_CSAT` IN ('3','4','5') THEN 0
                ELSE NULL
            END
        ),
        1
    ) AS low_csat_pct
FROM validated_cs_data
GROUP BY `Ticket Channel`
ORDER BY avg_csat ASC;
SELECT
    `Ticket Priority` AS priority,
    COUNT(*) AS total_tickets,
    SUM(`Ticket Status` <> 'Closed') AS open_pending
FROM validated_cs_data
GROUP BY `Ticket Priority`;