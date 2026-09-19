# Python / Jupyter Workflow

This file documents the public workflow used in the project. Local paths, database passwords and Google service-account credentials are represented as placeholders and must not be committed.

## 1. Retrieve the source

```python
import kagglehub

path = kagglehub.dataset_download(
    "suraj520/customer-support-ticket-dataset"
)
print(path)
```

## 2. Load the validated dataset

```python
import pandas as pd

df = pd.read_csv(
    r"<LOCAL_PATH>\Validated_Customer_Support - Updated_Data.csv"
)

print(df.shape)
print(df.head())
print(df.isnull().sum())
```

The validated dataset contains 8,469 records. The validation layer includes masked customer identifiers, age groups, product categories and validated CSAT/response fields.

## 3. Load into MySQL with SQLAlchemy

```python
from sqlalchemy import create_engine

engine = create_engine(
    "mysql+pymysql://<USER>:<PASSWORD>@localhost:3306/<DATABASE>"
)

df.to_sql(
    name="validated_cs_data",
    con=engine,
    if_exists="replace",
    index=False
)
```

## 4. Connect Jupyter to Google Sheets

```python
import gspread
from google.oauth2.service_account import Credentials

SCOPES = [
    "https://www.googleapis.com/auth/spreadsheets"
]

credentials = Credentials.from_service_account_file(
    "credentials.json",
    scopes=SCOPES
)

gc = gspread.authorize(credentials)

spreadsheet = gc.open_by_key(
    "<SPREADSHEET_ID>"
)
```

The service-account JSON is excluded from GitHub.

## 5. Retrieve SQL results

Example product-category analysis:

```python
query = """
SELECT
    Product_Category,
    COUNT(*) AS tickets,
    ROUND(
        AVG(
            CASE
                WHEN Validated_CSAT REGEXP '^[1-5]$'
                THEN CAST(Validated_CSAT AS DECIMAL(3,1))
            END
        ),
        2
    ) AS avg_csat
FROM validated_cs_data
GROUP BY Product_Category
ORDER BY tickets DESC;
"""

product_results = pd.read_sql(
    query,
    engine
)
```

## 6. Age-group product-mix analysis

The third analysis was revised to examine the product mix represented in support records across age groups.

```python
query = """
SELECT
    Age_group,
    Product_Category,
    COUNT(*) AS ticket_records,
    ROUND(
        100 * COUNT(*)
        / SUM(COUNT(*)) OVER (PARTITION BY Age_group),
        2
    ) AS category_share_pct
FROM validated_cs_data
GROUP BY Age_group, Product_Category
ORDER BY Age_group, ticket_records DESC;
"""

age_product_mix = pd.read_sql(
    query,
    engine
)
```

This is described as **observed product mix by age group**, not definitive population-wide buying behaviour.

## 7. Publish results to Google Sheets

```python
worksheet = spreadsheet.worksheet(
    "SQL_Findings"
)

values = (
    [product_results.columns.tolist()]
    + product_results.fillna("").astype(str).values.tolist()
)

worksheet.clear()
worksheet.update(
    values,
    "A1"
)
```

The same pattern is used for the other analytical result tables.

## 8. Final pipeline

```
Kaggle API
    ↓
Google Sheets validation
    ↓
Validated CSV
    ↓
Pandas
    ↓
SQLAlchemy
    ↓
MySQL
    ↓
SQL analysis
    ↓
Jupyter / Pandas
    ↓
Google Sheets API / gspread
    ↓
Reporting tabs
    ↓
Dashboard
```

## 9. Security

Never commit:

- MySQL passwords
- service-account JSON files
- API keys
- local credential paths

These are excluded through `.gitignore`.
