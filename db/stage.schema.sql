-- Add new schema named "demo"
CREATE SCHEMA "demo";
-- Create "document" table
CREATE TABLE "demo"."document" ("document_id" character varying(100) NOT NULL, "account_id" bigint NOT NULL, "campaign_id" bigint NULL, "object_id" bigint NOT NULL, "object_type" character varying(50) NOT NULL, "document_name" character varying(250) NULL, "schema_name" character varying(250) NOT NULL, "schema_version" integer NOT NULL, "publish_time_utc" timestamp NULL, "created_time_utc" timestamp NOT NULL, "metadata" jsonb NOT NULL, "databag" jsonb NOT NULL, "version_number" integer NOT NULL, PRIMARY KEY ("document_id"));
-- Create index "campaign_id_idx" to table: "document"
CREATE INDEX "campaign_id_idx" ON "demo"."document" ("campaign_id") WHERE (campaign_id IS NOT NULL);
-- Create index "document_id_idx" to table: "document"
CREATE INDEX "document_id_idx" ON "demo"."document" ("document_id");
-- Create index "object_id_idx" to table: "document"
CREATE INDEX "object_id_idx" ON "demo"."document" ("object_id");
