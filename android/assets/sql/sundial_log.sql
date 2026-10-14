create table if not exists "t_debug_log" (
    "_id" integer primary key autoincrement,
    "type" integer,
    "create_time" integer,
    "speed" text,
    "max_speed" text,
    "gps_speed" text,
    "distance" text,
    "gps_distance" text,
    "rpm" text,
    "log1" text,
    "log2" text,
    "log3" text,
    "log4" text,
    "remark" text
);