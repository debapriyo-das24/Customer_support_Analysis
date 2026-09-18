# Customer Support Operations Analytics

End-to-end customer-success operations analytics case study using Google Sheets, Python/SQLAlchemy, MySQL and Google Sheets visualization.

## Workflow

Google Sheets → Python / SQLAlchemy → MySQL → SQL Analysis → Google Sheets Dashboard → GitHub

## What this project demonstrates

- Data cleaning and validation in Google Sheets
- Product taxonomy and segmentation
- PII-aware public data preparation
- Python + SQLAlchemy database ingestion
- MySQL analytical SQL
- Customer-success KPI design
- Google Sheets dashboarding
- Reproducible documentation and code

## Business questions

1. Where is support demand concentrated by product category?
2. Which ticket types show the greatest customer-experience friction?
3. Which channels show weaker recorded CSAT?
4. How much High/Critical unresolved work remains?
5. How complete and trustworthy are the operational metrics?

## Dataset snapshot

8,469 validated support tickets. 2,769 are closed (32.70%); 5,700 have no recorded CSAT, so CSAT response coverage is 32.70%. Average recorded CSAT is 2.99/5, with 39.80% of recorded responses scoring 1–2. 2,783 High/Critical tickets are Open or Pending.

## Repository

- `data/clean/`: public, de-identified analytical dataset
- `python/`: MySQL loader, optional MySQL→Google Sheets publisher, Jupyter notebook and script documentation
- `sql/`: schema and customer-success analysis
- `docs/`: methodology, data dictionary and findings
- `dashboard/`: Google Sheets dashboard instructions and final screenshot
- `reports/`: reproducible summary outputs

## Data governance

The public analytical extract removes names, emails and free-text descriptions. Empty timestamps remain missing rather than being fabricated. The project treats invalid timestamp sequences as data-quality exceptions rather than silently correcting them.

## Portfolio note

This is an independent portfolio case study using a validated customer-support dataset. It is not internal company data and does not claim to represent any employer or client.