---
title: DuckDB Extension Stats
---

```sql downloads
SELECT * FROM downloads
order by _last_update desc, downloads desc
```

```sql num_extensions
SELECT count(distinct extension) as total_extensions FROM downloads
```

```sql num_downloads_last_week
SELECT sum(downloads) as total_extension_downloads_last_week FROM downloads
WHERE _last_update >= CAST(now() AS TIMESTAMP) - INTERVAL '2 days'
```

```sql downloads_last_week
SELECT
  extension,
  downloads
FROM downloads
WHERE _last_update >= CAST(now() AS TIMESTAMP) - INTERVAL '2 days'
order by _last_update desc, downloads desc
```

<BigValue
  data={num_extensions}
  value=total_extensions
/>

<BigValue
  data={num_downloads_last_week}
  value=total_extension_downloads_last_week
  fmt="num0"
/>


<DataTable
  title="DuckDB Extension Downloads Last Week"
  data={downloads_last_week}
  rows=10
/>

<LineChart
  title="DuckDB Extension Downloads by Week"
  data={downloads}
  x=_last_update
  chartAreaHeight=400
  y=downloads
  series=extension
/>




```sql repos
from repos
```

```sql stars
select *
from repos
left join stars on repos.repo_short = stars.full_name
where stars.stargazers_count is not null
```

<BarChart
  data={stars}
  title="DuckDB Extension Stars (Not all repos)
  x=name
  y=stargazers_count
  swapXY
/>

