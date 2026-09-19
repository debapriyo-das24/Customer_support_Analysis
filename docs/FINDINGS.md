# Customer Support Operations Analytics — Findings

## 1. Objective

This project analyses a validated customer-support dataset from a Customer Success / Customer Operations perspective.

The analysis is organised into four monitoring areas:

1. **Demand:** Where is support volume concentrated?
2. **Customer experience:** Where do recorded CSAT and low-CSAT rates differ across ticket types and channels?
3. **Observed product mix by age group:** How does the product mix represented in support interactions vary across customer age groups?
4. **Operational risk:** Where is unresolved priority workload accumulating?

## 2. Dataset snapshot

| Metric | Value |
|---|---:|
| Total tickets | **8,469** |
| Closed | **2,769** |
| Open | **2,819** |
| Pending Customer Response | **2,881** |
| Closure rate | **32.70%** |
| Open/Pending rate | **67.30%** |
| Recorded CSAT responses | **2,769** |
| CSAT response rate | **32.70%** |
| Average recorded CSAT | **2.99 / 5** |
| Low-CSAT responses (1–2) | **39.80%** of recorded responses |
| High/Critical Open/Pending | **2,783** |

## 3. Demand by product category

| Product Category | Tickets |
|---|---:|
| Gaming Consoles & Accessories | 1,158 |
| Laptops & Computers | 1,131 |
| Cameras | 1,061 |
| Smart Home | 865 |
| Smartphones | 826 |

The category layer reduces individual product names into broader segments that can be monitored at a management level.

## 4. Customer experience by ticket type

Among tickets with recorded CSAT:

| Ticket Type | Tickets with CSAT | Avg CSAT | Low-CSAT % |
|---|---:|---:|---:|
| Refund request | 596 | 2.93 | 41.61% |
| Billing inquiry | 544 | 3.03 | 40.99% |
| Technical issue | 580 | 2.96 | 40.34% |
| Cancellation request | 516 | 3.03 | 38.37% |
| Product inquiry | 533 | 3.02 | 37.34% |

Refund requests have the highest observed low-CSAT rate in this dataset. These are descriptive associations, not evidence that ticket type causes dissatisfaction.

## 5. Customer experience by channel

Among tickets with recorded CSAT:

| Channel | Tickets with CSAT | Avg CSAT | Low-CSAT % |
|---|---:|---:|---:|
| Phone | 691 | 2.95 | 41.24% |
| Email | 720 | 2.96 | 42.08% |
| Social media | 684 | 2.97 | 39.33% |
| Chat | 674 | 3.08 | 36.35% |

The channel comparison provides a monitoring layer for customer operations. The figures describe this dataset's recorded responses and should not be treated as causal channel effects.

## 6. Observed product mix by age group

The dataset contains four age groups:

| Age Group | Ticket Records |
|---|---:|
| Adult | 3,180 |
| Senior Citizen | 2,560 |
| Young Adult | 2,397 |
| Teenager | 332 |

The most represented category within each group is:

| Age Group | Largest represented category | Share within group |
|---|---|---:|
| Adult | Gaming Consoles & Accessories | 13.81% |
| Senior Citizen | Laptops & Computers | 14.06% |
| Young Adult | Gaming Consoles & Accessories | 13.48% |
| Teenager | Gaming Consoles & Accessories | 13.55% |

The product mix is broad across all four groups, with Gaming Consoles & Accessories, Laptops & Computers and Cameras consistently among the largest represented categories.

### Interpretation

This analysis is deliberately labelled **observed product mix by age group**, not definitive "buying habits."

The dataset records products associated with support tickets. It does not provide a complete record of all purchases made by every customer in each age group. Therefore, the results describe the support-ticket population represented in the dataset rather than population-wide purchasing behaviour.

## 7. Operational risk

| Priority | Total Tickets | Open/Pending |
|---|---:|---:|
| Critical | 2,129 | 1,403 |
| High | 2,085 | 1,380 |
| Medium | 2,192 | 1,498 |
| Low | 2,063 | 1,419 |

There are **2,783 High/Critical tickets in Open or Pending status**, providing an operational-risk indicator alongside the customer-experience metrics.

## 8. Data-quality considerations

Missing response/resolution timestamps were retained rather than fabricated. Missing CSAT was likewise preserved as missing/non-response.

This prevents incomplete operational records from being interpreted as zero response time, zero resolution time or a zero satisfaction score.

## 9. Customer-success framework

The final analytical flow is:

**Demand → Experience → Customer segmentation → Operational risk**

- Product category shows where support demand is concentrated.
- Ticket type and channel provide customer-experience views through recorded CSAT.
- Age-group product mix adds a customer-segmentation lens.
- Priority versus Open/Pending status highlights unresolved workload.

## 10. Limitations

- CSAT is available for only 32.70% of all tickets, so CSAT findings represent the recorded-response population.
- The source is a portfolio dataset and should not be interpreted as a direct representation of any specific company's customers.
- Observed product mix by age group is not equivalent to population-wide buying behaviour.
- Descriptive associations should not be interpreted as causal relationships.