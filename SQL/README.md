# MySQL / SQL Analysis

MySQL is the analytical engine of the project. The validated dataset is loaded into the `validated_cs_data` table through Python and SQLAlchemy.

## Analytical framework

### 1. Executive KPIs

- Total tickets
- Closed and Open/Pending tickets
- Closure rate
- Average recorded CSAT
- CSAT response coverage
- High/Critical Open/Pending workload

### 2. Demand

Product categories consolidate individual product names into broader segments and show where support demand is concentrated.

### 3. Customer experience

Ticket type and channel queries compare:

- Ticket volume
- Average recorded CSAT
- Low-CSAT rate

CSAT calculations exclude missing/non-response records.

### 4. Observed product mix by age group

The revised third analysis uses `Age_group × Product_Category`.

A window function calculates the category share within each age group:

```sql
ROUND(
    100 * COUNT(*)
    / SUM(COUNT(*)) OVER (PARTITION BY `Age_group`),
    2
)
```

This is described as **observed product mix by age group**, not definitive population-wide buying behaviour, because the dataset records products associated with support tickets rather than every purchase.

### 5. Operational risk

Priority is compared with Open/Pending status to show unresolved workload.

## SQL execution order

1. Executive KPI snapshot
2. Product-category demand
3. Ticket-type customer experience
4. Channel customer experience
5. Age-group product mix
6. Priority versus unresolved workload

The complete implementation is in `Customer_support_analysis.sql`.

## Output

The query results are retrieved through Jupyter/Pandas and published into Google Sheets reporting tabs. The Dashboard folder documents the final visual reporting layer.