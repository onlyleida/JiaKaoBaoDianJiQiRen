CREATE TABLE "t_log"(
"_id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"type" INTEGER,
"file" TEXT,
"type_name" TEXT,
"dir_name" TEXT,
"start_time" INTEGER,
"end_time" INTEGER,
"state" INTEGER,
"size" INTEGER
);