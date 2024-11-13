
with base as (
    FROM (
    VALUES
    ('bigquery', 'hafenkran/duckdb-bigquery', 'Integrates DuckDB with Google BigQuery, allowing direct querying and management of BigQuery datasets'),
    ('chsql', 'quackscience/duckdb-extension-clickhouse-sql', 'ClickHouse SQL Macros for DuckDB'),
    ('crypto', 'rustyconover/duckdb-crypto-extension', 'Cryptographic hash functions and HMAC'),
    ('duckpgq', 'cwida/duckpgq-extension', 'Extension that adds support for SQL/PGQ and graph algorithms'),
    ('evalexpr_rhai', 'rustyconover/duckdb-evalexpr-rhai-extension', 'Evaluate the Rhai scripting language in DuckDB'),
    ('faiss', 'arjenpdevries/faiss', 'Provides a subset of the faiss API to DuckDB'),
    ('flockmtl', 'dsg-polymtl/duckdb-flockmtl', 'DuckDB LLM Extension'),
    ('fuzzycomplete', 'rustyconover/duckdb-fuzzycomplete-extension', 'Fuzzy matching based autocompletion'),
    ('gsheets', 'evidence-dev/duckdb_gsheets', 'Read and write Google Sheets using SQL'),
    ('h3', 'isaacbrodsky/h3-duckdb', 'Hierarchical hexagonal indexing for geospatial data'),
    ('hostfs', 'gropaul/hostFS', 'Navigate and explore the filesystem using SQL'),
    ('http_client', 'quackscience/duckdb-extension-httpclient', 'DuckDB HTTP Client Extension'),
    ('httpserver', 'quackscience/duckdb-extension-httpserver', 'DuckDB HTTP API Server Extension'),
    ('lindel', 'rustyconover/duckdb-lindel-extension', 'Linearization/Delinearization, Z-Order, Hilbert and Morton Curves'),
    ('magic', 'carlopi/duckdb_magic', 'libmagic/file utilities ported to DuckDB'),
    ('open_prompt', 'quackscience/duckdb-extension-openprompt', 'Interact with LLMs with a simple DuckDB Extension'),
    ('pivot_table', 'Alex-Monahan/pivot_table', 'Provides a spreadsheet-style pivot_table function'),
    ('prql', 'ywelsch/duckdb-prql', 'Support for PRQL, the Pipelined Relational Query Language'),
    ('psql', 'ywelsch/duckdb-psql', 'Support for PSQL, a piped SQL dialect for DuckDB'),
    ('quack', 'duckdb/extension-template', 'Provides a hello world example demo'),
    ('scrooge', 'pdet/Scrooge-McDuck', 'Provides functionality for financial data-analysis, including data scanners for the Ethereum Blockchain and Yahoo Finance'),
    ('sheetreader', 'polydbms/sheetreader-duckdb', 'Fast XLSX file importer'),
    ('shellfs', 'rustyconover/duckdb-shellfs-extension', 'Allow shell commands to be used for input and output'),
    ('tarfs', 'Maxxen/duckdb_tarfs', 'glob, open and read files within .tar archives'),
    ('ulid', 'Maxxen/duckdb_ulid', 'ULID data type for DuckDB')
    ) AS extensions(name, repo_short, description)
)

select 
    name,
    repo_short,
    description,
    'https://github.com/' || repo_short as repo_url
from base