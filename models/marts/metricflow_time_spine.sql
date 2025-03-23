{{ config(materialized='table') }}

WITH 
date_spine AS (
  {{ dbt_utils.date_spine(
      start_date="DATE '2020-01-01'",
      end_date="DATE '2030-01-01'",
      datepart="day"
  ) }}
)

SELECT
  date_day as date_day,
  DATE_TRUNC('week', date_day) as date_week,
  DATE_TRUNC('month', date_day) as date_month,
  DATE_TRUNC('quarter', date_day) as date_quarter,
  DATE_TRUNC('year', date_day) as date_year
FROM date_spine
