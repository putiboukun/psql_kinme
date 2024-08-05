-- select 'create database trading' where not exists (select from pg_database where datname='trading');
-- \c trading

CREATE TABLE IF NOT EXISTS tag (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS node (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "user" (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30),
    password VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS workflow (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    workflow TEXT,
    created_time TIMESTAMP,
    updated_time TIMESTAMP,
    user_id INTEGER,
    content TEXT NOT NULL,
    rendered_content TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES "user" (id)
);

CREATE TABLE IF NOT EXISTS workflows_tags (
    workflow_id INTEGER,
    tag_id INTEGER,
    FOREIGN KEY (workflow_id) REFERENCES workflow (id),
    FOREIGN KEY (tag_id) REFERENCES tag (id)
);

CREATE TABLE IF NOT EXISTS workflows_nodes (
    workflow_id INTEGER,
    node_id INTEGER,
    FOREIGN KEY (workflow_id) REFERENCES workflow (id),
    FOREIGN KEY (node_id) REFERENCES node (id)
);
