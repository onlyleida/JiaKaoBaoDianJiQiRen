CREATE TABLE `t_oort_log`(
    `_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    `log_group` TEXT,
    `log_event` TEXT,
    `log_properties` TEXT,
    `log_time_stamp` LONG DEFAULT 0,
    `log_duration` LONG DEFAULT 0
);
