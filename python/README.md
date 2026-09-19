# Python & Jupyter

Python is the orchestration layer connecting the validated dataset, MySQL and the Google Sheets reporting layer.

## Workflow

```
Validated CSV
    ↓
Pandas
    ↓
SQLAlchemy
    ↓
MySQL
    ↓
pandas.read_sql()
    ↓
Jupyter DataFrames
    ↓
Google Sheets API / gspread
    ↓
Reporting tabs + Dashboard
```

## What the project demonstrates

- Programmatic dataset retrieval with Kaggle API
- Data inspection and validation with Pandas
- Data-quality checks and preservation of missing values
- SQLAlchemy-based MySQL ingestion
- SQL execution from Jupyter
- Conversion of SQL outputs into Pandas DataFrames
- Google Sheets API / gspread reporting automation
- Reproducible notebook-style analysis

## Analysis areas

1. Executive KPI snapshot
2. Product-category demand
3. Customer experience by ticket type
4. Customer experience by channel
5. Observed product mix by age group
6. Priority versus unresolved workload

## Security

Database credentials and Google service-account credentials are kept locally and excluded through `.gitignore`.

Do not commit:
- passwords
- service-account JSON files
- API keys or tokens

## Files

- `CS_DATA_to_SQL.md`: documented Python/Jupyter workflow
- `requirements.txt`: project dependencies

The SQL logic is maintained separately in `SQL/Customer_support_analysis.sql`.