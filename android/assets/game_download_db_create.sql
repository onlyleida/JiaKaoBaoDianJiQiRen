CREATE TABLE `t_task` (
	 `_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	 `title` TEXT NOT NULL,
	 `url` TEXT NOT NULL,
	 `package_name` TEXT,
	 `icon_url` TEXT,
	 `game_id` LONG DEFAULT 0,
	 `uuid` TEXT,
	 `download_id` LONG DEFAULT 0,
	 `create_time` LONG DEFAULT 0
);
CREATE TABLE `t_statistic` (
	 `_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	 `action_id` INTEGER DEFAULT 0,
	 `game_id` LONG DEFAULT 0,
	 `uuid` TEXT
);