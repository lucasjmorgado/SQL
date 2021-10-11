-- Find pid from query
select pid, query_start, application_name, client_addr, client_port, state, query
from pg_catalog.pg_start_activity
where username = 'datalake' and state = 'active';

-- Replace pid in query 
select pg_cancel_backend(pid), pg_terminate_backend(pid) from pg_start_activity;
