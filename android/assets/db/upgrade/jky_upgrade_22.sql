CREATE TABLE "t_highlight_video"(
"_id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"origin_path" TEXT,
"compress_path" TEXT,
"compress_duration" INTEGER,
"xy_token" TEXT,
"drive_license_type" TEXT,
"trace_id" TEXT,
"track_id" TEXT,
"share_url" TEXT,
"step" INTEGER,
"start_time" INTEGER,
"end_time" INTEGER,
"update_time" INTEGER
);