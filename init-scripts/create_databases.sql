-- Create Databases
CREATE DATABASE mageai_db;
CREATE DATABASE metabase_db;
CREATE DATABASE openmetadata_db;
CREATE DATABASE airflow_db;

-- Create Users
CREATE USER mageai_user WITH PASSWORD 'mageai_pass';
CREATE USER metabase_user WITH PASSWORD 'metabase_pass';
CREATE USER openmetadata_user WITH PASSWORD 'openmetadata_pass';
CREATE USER airflow_user WITH PASSWORD 'airflow_pass';

-- Grant Superuser Privileges to Users (optional, remove for least privilege)
ALTER USER mageai_user WITH SUPERUSER;
ALTER USER metabase_user WITH SUPERUSER;
ALTER USER openmetadata_user WITH SUPERUSER;
ALTER USER airflow_user WITH SUPERUSER;

-- Grant Privileges for mageai_db
GRANT ALL PRIVILEGES ON DATABASE mageai_db TO mageai_user;

-- Connect to mageai_db and set schema privileges
\connect mageai_db
GRANT USAGE ON SCHEMA public TO mageai_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO mageai_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO mageai_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO mageai_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO mageai_user;

-- Grant Privileges for metabase_db
GRANT ALL PRIVILEGES ON DATABASE metabase_db TO metabase_user;

-- Connect to metabase_db and set schema privileges
\connect metabase_db
GRANT USAGE ON SCHEMA public TO metabase_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO metabase_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO metabase_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO metabase_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO metabase_user;

-- Grant Privileges for openmetadata_db
GRANT ALL PRIVILEGES ON DATABASE openmetadata_db TO openmetadata_user;

-- Connect to openmetadata_db and set schema privileges
\connect openmetadata_db
GRANT USAGE ON SCHEMA public TO openmetadata_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO openmetadata_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO openmetadata_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO openmetadata_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO openmetadata_user;

-- Grant Privileges for airflow_db
GRANT ALL PRIVILEGES ON DATABASE airflow_db TO airflow_user;

-- Connect to airflow_db and set schema privileges
\connect airflow_db
GRANT USAGE ON SCHEMA public TO airflow_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO airflow_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO airflow_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO airflow_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO airflow_user;