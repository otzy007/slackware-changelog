CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "slackware_current" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "changelog" varchar(255));
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20120612133210');