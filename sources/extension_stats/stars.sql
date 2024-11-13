select 
    unnest(items).full_name as full_name,
    unnest(items).stargazers_count as stargazers_count,
    unnest(items).name as name
from read_json('https://api.github.com/search/repositories?q=duckdb%20extension%20in:name&sort=stars&order=desc&per_page=100');