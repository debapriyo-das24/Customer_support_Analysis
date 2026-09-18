# Customer Support Operations Analytics — Findings

## 1. Objective

This project analyses a validated customer-support dataset from a customer-success / customer-operations perspective.

The analysis focuses on four questions:

1. Where is customer-support demand concentrated?
2. Which ticket types are associated with weaker recorded customer satisfaction?
3. How does recorded CSAT vary by support channel?
4. Where is unresolved priority workload accumulating?

## 2. Dataset

- Total tickets: **8,469**
- Ticket statuses:
  - Closed: **2,769**
  - Open: **2,819**
  - Pending Customer Response: **2,881**
- Closure rate: **32.70%**
- Open/Pending rate: **67.30%**
- Recorded CSAT responses: **2,769**
- CSAT response rate: **32.70%**
- Average recorded CSAT: **2.99 / 5**
- Low-CSAT responses (1–2): **39.80%** of recorded CSAT responses
- High/Critical Open/Pending tickets: **2,783**

## 3. Product-category demand

Across all tickets, the largest product-category volumes are:

| Product Category | Tickets |
|---|---:|
| Gaming Consoles & Accessories | 1,158 |
| Laptops & Computers | 1,131 |
| Cameras | 1,061 |
| Smart Home | 865 |
| Smartphones | 826 |

This segmentation reduces dozens of individual product names into a smaller set of categories that can be monitored at a management level.

Among tickets with recorded CSAT, the category-level CSAT results should be interpreted together with ticket volume because some categories have substantially fewer observations.

## 4. Customer-experience friction by ticket type

Among tickets with recorded CSAT:

| Ticket Type | Tickets with CSAT | Avg CSAT | Low-CSAT % |
|---|---:|---:|---:|
| Refund request | 596 | 2.93 | 41.61% |
| Billing inquiry | 544 | 3.03 | 40.99% |
| Technical issue | 580 | 2.96 | 40.34% |
| Cancellation request | 516 | 3.03 | 38.37% |
| Product inquiry | 533 | 3.02 | 37.34% |

Refund requests have the highest observed low-CSAT rate in this dataset. Billing inquiries and technical issues also show relatively high low-CSAT rates.

These are associations in the dataset, not evidence that the ticket type itself causes dissatisfaction.

## 5. Channel analysis

Among tickets with recorded CSAT:

| Channel | Tickets with CSAT | Avg CSAT | Low-CSAT % |
|---|---:|---:|---:|
| Phone | 691 | 2.95 | 41.24% |
| Email | 720 | 2.96 | 42.08% |
| Social media | 684 | 2.97 | 39.33% |
| Chat | 674 | 3.08 | 36.35% |

The channel comparison provides a practical customer-success monitoring view. Email has the highest low-CSAT share in the observed responses, while Chat has the highest average CSAT.

## 6. Priority and unresolved workload

| Priority | Total Tickets | Open/Pending |
|---|---:|---:|
| Critical | 2,129 | 1,403 |
| High | 2,085 | 1,380 |
| Medium | 2,192 | 1,498 |
| Low | 2,063 | 1,419 |

There are **2,783 High/Critical tickets in Open or Pending status**. This provides an operational-risk indicator that can be monitored alongside customer-experience metrics.

## 7. Data-quality considerations

The validated dataset retains missing response/resolution timestamps rather than fabricating values.

The project also preserves the distinction between:

- a customer interaction for which a timestamp was recorded, and
- an interaction for which the timestamp is missing.

This prevents missing operational data from being interpreted as zero response or resolution time.

## 8. Customer-success interpretation

The analysis suggests three useful monitoring layers:

**Demand:** product category and ticket type show where customer issues are concentrated.

**Experience:** CSAT and low-CSAT rate indicate where customers may be experiencing more friction.

**Operational risk:** unresolved High/Critical workload indicates where customer issues may require closer follow-up.

Together, these metrics form a simple customer-success operations monitoring framework rather than a volume-only support report.

## 9. Limitations

- CSAT is available for only 32.70% of tickets, so CSAT-based conclusions represent the recorded-response population rather than every ticket.
- This is a portfolio dataset and should not be interpreted as a direct representation of any real company's customer base or operating environment.
- Correlation or association in these summaries should not be interpreted as causation.
