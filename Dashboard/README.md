# Customer Success Operations Dashboard

The final reporting layer is a Google Sheets dashboard fed by analytical outputs generated from MySQL through the Python/Jupyter workflow.

![Customer Support Analytics Dashboard](https://github.com/user-attachments/assets/79f26363-93a4-426f-b51f-406131cad98e)

## Dashboard purpose

The dashboard turns the SQL analysis into a compact customer-success monitoring view.

### Executive KPIs

- Total tickets
- Closure rate
- Average recorded CSAT
- CSAT response coverage
- High/Critical Open/Pending workload

### Demand

**Product-category ticket volume**

Shows where support demand is concentrated after grouping individual products into broader categories.

### Customer experience

**Ticket type and channel CSAT**

Shows differences in recorded average CSAT and low-CSAT rates.

CSAT is calculated only for records with a recorded response. Missing CSAT is not treated as zero.

### Observed product mix by age group

Shows how product categories represented in support-ticket records are distributed across customer age groups.

This is deliberately described as **observed product mix**, not definitive population-wide buying behaviour.

### Operational risk

**Open/Pending workload by priority**

Shows unresolved workload across Critical, High, Medium and Low priority records.

## Live dashboard

[Open the Google Sheets dashboard](https://docs.google.com/spreadsheets/d/1WsdMthMwW8rGoF_NqK12T-semJb_wwI5cI7DXaiqMSw/edit?gid=1841344587#gid=1841344587)

## Data flow

```
Google Sheets validation
        ↓
Validated CSV
        ↓
Python / Pandas
        ↓
SQLAlchemy
        ↓
MySQL
        ↓
SQL analysis
        ↓
Jupyter / Pandas
        ↓
Google Sheets API
        ↓
Dashboard
```

The screenshot is the portfolio snapshot; the linked Google Sheet is the reporting layer.