# ga4-ecommerce-funnel-analysis
SQL/BigQuery analysis of 400K+ GA4 e-commerce events: purchase funnel and channel-conversion breakdown on Google's public Merchandise Store dataset, visualized in Data Studio.
## Key Findings
- The steepest funnel drop-off is at checkout, not the top: 77.4% of cart-adders begin checkout, but only 45.5% of those complete a purchase.
- Only 1 in 5 users who view a product ever add it to cart, the single largest-volume opportunity in the funnel.
- Google drives the most traffic (127K sessions) but converts at just 1.28%, the lowest of any major channel; direct traffic converts 19% higher despite fewer sessions.
- Excluded "(data deleted)" and the store-referral bucket from channel recommendations since neither represents an actionable marketing channel.

## Dashboard
https://datastudio.google.com/s/hZlttfHCDHo

## Tools
BigQuery (SQL), Data Studio

## Files
- queries.sql — all SQL used in this analysis
