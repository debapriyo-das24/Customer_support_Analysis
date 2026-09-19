# Methodology

## 1. Source

The project began with a customer-support dataset retrieved programmatically through the Kaggle API.

## 2. Validation and preparation

Google Sheets was used as the first quality-control layer.

The workflow included:

- PII masking
- Missing-value review
- Timestamp review
- CSAT validation
- Age-group classification
- Product categorisation
- Review of status, priority and channel fields

Missing timestamps were retained rather than replaced with fabricated values.

## 3. Public analytical dataset

The validated dataset was separated from the original source data for portfolio use. Customer identifiers are masked and the raw source is excluded from version control.

## 4. Database ingestion

Python and Pandas read the validated CSV. SQLAlchemy transfers the DataFrame into MySQL as `validated_cs_data`.

## 5. SQL analysis

MySQL is used for the analytical layer.

The analysis covers:

- Demand by product category
- Customer experience by ticket type
- Customer experience by channel
- Observed product mix by age group
- Priority and unresolved workload
- Executive KPIs

## 6. Reporting

Jupyter retrieves SQL outputs into Pandas DataFrames. The Google Sheets API / gspread workflow writes these results into reporting tabs, which feed the final Google Sheets dashboard.

## 7. Interpretation

The project deliberately distinguishes descriptive association from causation.

The age-group analysis is particularly limited: it shows the product mix represented in support-ticket records by age group. It should not be interpreted as a complete measure of population-wide purchasing behaviour.

CSAT findings also represent only records with a recorded satisfaction response.

## 8. Reproducibility

The repository contains:

- Validated analytical data
- Python/Jupyter workflow documentation
- SQL analysis
- Findings
- Dashboard documentation
- Live Google Sheets reporting link

Credentials are excluded from version control.