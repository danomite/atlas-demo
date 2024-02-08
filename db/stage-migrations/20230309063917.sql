create schema if not exists demo;

create table demo.document
(
    document_id      varchar(100) PRIMARY KEY,
    account_id       bigint       NOT NULL,
    campaign_id      bigint       NULL,
    object_id        bigint       NOT NULL,
    object_type      varchar(50)  NOT NULL,
    document_name    varchar(250) NULL,
    schema_name      varchar(250) NOT NULL,
    schema_version   int          NOT NULL,
    publish_time_utc timestamp    NULL,
    created_time_utc timestamp    NOT NULL,
    metadata         jsonb        NOT NULL,
    databag          jsonb        NOT NULL,
    version_number   int          NOT NULL
);

-- Indexes
create index document_id_idx on demo.document (document_id);
create index object_id_idx on demo.document (object_id);
create index campaign_id_idx on demo.document (campaign_id)
where
    campaign_id is NOT NULL;
