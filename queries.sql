-- 1. Purchase funnel by unique users
SELECT
  COUNT(DISTINCT CASE WHEN event_name = 'view_item' THEN user_pseudo_id END) AS users_viewed,
  COUNT(DISTINCT CASE WHEN event_name = 'add_to_cart' THEN user_pseudo_id END) AS users_added_to_cart,
  COUNT(DISTINCT CASE WHEN event_name = 'begin_checkout' THEN user_pseudo_id END) AS users_began_checkout,
  COUNT(DISTINCT CASE WHEN event_name = 'purchase' THEN user_pseudo_id END) AS users_purchased
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`;

-- 2. Conversion rate by traffic source
SELECT
  traffic_source.source AS source,
  COUNTIF(event_name = 'session_start') AS sessions,
  COUNTIF(event_name = 'purchase') AS purchases,
  ROUND(SAFE_DIVIDE(COUNTIF(event_name = 'purchase'), COUNTIF(event_name = 'session_start')) * 100, 2) AS conversion_rate_pct
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
GROUP BY source
ORDER BY sessions DESC;
