CREATE TABLE `t_download`(`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `content_length` INTEGER, `headers` TEXT,
 `url` TEXT, `title` TEXT, `download_group` TEXT, `mime_type` TEXT, `store_path` TEXT, `allow_network_type` INTEGER,
 `download_status` INTEGER, `downloaded_length` INTEGER, `start_time` INTEGER, `finish_time` INTEGER, `etag` TEXT,
 `notification` INTEGER);
CREATE INDEX t_download_group_index ON t_download(download_group);