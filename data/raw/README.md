# Raw Data

The original Kaggle source dataset is kept outside the public repository.

## Public-data workflow

The project does not publish the original raw customer-identifying fields. The validated portfolio dataset under `data/validated/` contains masked customer identifiers and the fields required for the analysis.

The raw data was used only as the starting point for:

1. Validation in Google Sheets
2. PII masking
3. Age-group classification
4. Product categorisation
5. Data-quality review

Missing timestamps and non-response values were retained rather than fabricated.

The raw dataset is excluded from version control through `.gitignore`.