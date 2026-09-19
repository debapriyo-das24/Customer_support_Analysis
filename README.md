# Customer Support Operations Analytics

An end-to-end customer-success analytics case study using Google Sheets, Python, Pandas, SQLAlchemy, MySQL and Google Sheets reporting.

![Customer Support Dashboard](https://github.com/user-attachments/assets/79f26363-93a4-426f-b51f-406131cad98e)

## Project objective

I wanted to move beyond isolated course exercises and build a complete analytical workflow around a customer-operations problem:

> Where is customer demand concentrated, where does the recorded customer experience show friction, and how does the observed product mix vary across age groups?

## Workflow

**Kaggle API → Google Sheets → Python/Pandas → SQLAlchemy → MySQL → SQL analysis → Jupyter → Google Sheets dashboard**

### Google Sheets

Used as the validation and data-preparation layer for PII masking, field checks, age-group classification and product categorisation. Missing timestamps were retained rather than artificially filled.

### Python + Pandas

Used for data inspection, transformation, MySQL ingestion through SQLAlchemy, SQL result retrieval and Google Sheets reporting automation.

### MySQL

Used as the analytical engine for:

- Product-category demand
- Customer-experience signals by ticket type and channel
- Observed product mix by age group
- Priority and unresolved workload
- Executive KPI calculations

### Google Sheets reporting

SQL outputs are returned to Google Sheets and used as the source for the dashboard.

## Dataset snapshot

| Metric | Value |
|---|---:|
| Total tickets | 8,469 |
| Closed tickets | 2,769 |
| Open/Pending tickets | 5,700 |
| Closure rate | 32.70% |
| Recorded CSAT responses | 2,769 |
| CSAT response rate | 32.70% |
| Average recorded CSAT | 2.99 / 5 |
| Low-CSAT responses (1–2) | 39.80% of recorded responses |
| High/Critical Open/Pending | 2,783 |

## Analysis framework

### 1. Demand
Where is support demand concentrated across product categories?

### 2. Customer experience
Which ticket types and channels show differences in recorded CSAT and low-CSAT rates?

### 3. Observed product mix by age group
How does the product-category mix represented in support interactions vary across age groups?

### 4. Operational risk
Where is unresolved priority workload accumulating?

## Important interpretation note

The age-group analysis is described as **observed product mix by age group**, rather than definitive buying behaviour. The source records products associated with support tickets, not every purchase made by every customer. The analysis therefore describes the support-ticket population represented in the dataset.

## Dashboard

**[Open the live Google Sheets dashboard](https://docs.google.com/spreadsheets/d/1WsdMthMwW8rGoF_NqK12T-semJb_wwI5cI7DXaiqMSw/edit?gid=1841344587#gid=1841344587)**

## Repository structure

```
Customer_support_Analysis/
├── data/
│   ├── raw/
│   └── validated/
├── python/
├── SQL/
├── Dashboard/
├── g-sheets/
└── docs/
```

## Data handling

The public dataset uses masked customer identifiers. The raw source is excluded from version control. Missing timestamps and missing CSAT are preserved as missing observations rather than converted into zeroes.

## Portfolio note

This is an independent portfolio case study. It is not internal company data and does not claim to represent any specific employer or client.