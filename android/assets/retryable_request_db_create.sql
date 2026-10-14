CREATE TABLE `t_http_retry_request`(
    `_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    `host` TEXT,
    `path_params` TEXT,
    `sign_key` TEXT,
    `method` TEXT,
    `body` TEXT,
    `need_encrypt` BOOLEAN ,
    `request_group` TEXT,
    `expired_time` LONG,
    `create_timestamp` LONG DEFAULT 0
);
