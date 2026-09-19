-- Customer Support Operations Analytics
-- Analytical table: validated_cs_data

-- 1. Executive KPI snapshot
SELECT
    COUNT(*) AS total_tickets,
    SUM(CASE WHEN `Ticket Status` = 'Closed' THEN 1 ELSE 0 END) AS closed_tickets,
    SUM(CASE WHEN `Ticket Status` <> 'Closed' THEN 1 ELSE 0 END) AS open_pending_tickets,
    ROUND(100 * AVG(CASE WHEN `Ticket Status` = 'Closed' THEN 1 ELSE 0 END), 2) AS closure_rate_pct,
    ROUND(AVG(CASE WHEN `Validated_CSAT` REGEXP '^[1-5]$' THEN CAST(`Validated_CSAT` AS DECIMAL(3,1)) END), 2) AS avg_csat,
    ROUND(100 * SUM(CASE WHEN `Validated_CSAT` REGEXP '^[1-5]$' THEN 1 ELSE 0 END) / COUNT(*), 2) AS csat_response_rate_pct,
    SUM(CASE WHEN `Ticket Status` <> 'Closed' AND `Ticket Priority` IN ('High','Critical') THEN 1 ELSE 0 END) AS high_critical_open_pending
FROM validated_cs_data;

-- 2. Demand: product-category volume and recorded CSAT
SELECT
    `Product_Category` AS product_category,
    COUNT(*) AS tickets,
    ROUND(AVG(CASE WHEN `Validated_CSAT` REGEXP '^[1-5]$' THEN CAST(`Validated_CSAT` AS DECIMAL(3,1)) END), 2) AS avg_csat,
    ROUND(100 * SUM(CASE WHEN `Validated_CSAT` IN ('1','2') THEN 1 ELSE 0 END) /
          NULLIF(SUM(CASE WHEN `Validated_CSAT` REGEXP '^[1-5]$' THEN 1 ELSE 0 END),0), 2) AS low_csat_pct
FROM validated_cs_data
GROUP BY `Product_Category`
ORDER BY tickets DESC;

-- 3. Customer experience: ticket-type friction
SELECT
    `Ticket Type` AS ticket_type,
    COUNT(*) AS tickets,
    ROUND(AVG(CASE WHEN `Validated_CSAT` REGEXP '^[1-5]$' THEN CAST(`Validated_CSAT` AS DECIMAL(3,1)) END), 2) AS avg_csat,
    ROUND(100 * SUM(CASE WHEN `Validated_CSAT` IN ('1','2') THEN 1 ELSE 0 END) /
          NULLIF(SUM(CASE WHEN `Validated_CSAT` REGEXP '^[1-5]$' THEN 1 ELSE 0 END),0), 2) AS low_csat_pct
FROM validated_cs_data
GROUP BY `Ticket Type`
ORDER BY low_csat_pct DESC;

-- 4. Customer experience: channel comparison
SELECT
    `Ticket Channel` AS channel,
    COUNT(*) AS tickets,
    ROUND(AVG(CASE WHEN `Validated_CSAT` REGEXP '^[1-5]$' THEN CAST(`Validated_CSAT` AS DECIMAL(3,1)) END), 2) AS avg_csat,
    ROUND(100 * SUM(CASE WHEN `Validated_CSAT` IN ('1','2') THEN 1 ELSE 0 END) /
          NULLIF(SUM(CASE WHEN `Validated_CSAT` REGEXP '^[1-5]$' THEN 1 ELSE 0 END),0), 2) AS low_csat_pct
FROM validated_cs_data
GROUP BY `Ticket Channel`
ORDER BY avg_csat ASC;

-- 5. Observed product mix by age group
-- This describes products represented in support-ticket records,
-- not population-wide purchasing behaviour.
SELECT
    `Age_group` AS age_group,
    `Product_Category` AS product_category,
    COUNT(*) AS ticket_records,
    ROUND(
        100 * COUNT(*) /
        SUM(COUNT(*)) OVER (PARTITION BY `Age_group`),
        2
    ) AS category_share_pct
FROM validated_cs_data
GROUP BY `Age_group`, `Product_Category`
ORDER BY `Age_group`, ticket_records DESC;

-- 6. Operational risk: priority versus unresolved workload
SELECT
    `Ticket Priority` AS priority,
    COUNT(*) AS total_tickets,
    SUM(CASE WHEN `Ticket Status` <> 'Closed' THEN 1 ELSE 0 END) AS open_pending
FROM validated_cs_data
GROUP BY `Ticket Priority`
ORDER BY FIELD(`Ticket Priority`, 'Critical','High','Medium','Low');