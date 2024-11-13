UNPIVOT (
    FROM read_json([
        printf('https://community-extensions.duckdb.org/download-stats-weekly/%s.json',
            strftime(x, '%Y/%W'))
        FOR x IN range(TIMESTAMP '2024-10-01', now()::TIMESTAMP, INTERVAL 1 WEEK)
    ])
)
ON COLUMNS(* EXCLUDE _last_update)
INTO NAME extension VALUE downloads