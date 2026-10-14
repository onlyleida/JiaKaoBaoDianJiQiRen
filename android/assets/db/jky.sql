create TABLE "t_deduct"(
"_id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"exam_site_id" INTEGER,
"code" INTEGER,
"step_id" INTEGER,
"judge_type" INTEGER,
"deduct_score" INTEGER,
"status" INTEGER,
"allow_user_set" INTEGER,
"name" TEXT,
"desc" TEXT,
"area_code" TEXT,
"user_id" TEXT,
"had_set_by_user" INTEGER,
"can_auto_judge" INTEGER,
"position" INTEGER,
"rule_ids" TEXT,
"use_mode" INTEGER);

create TABLE "t_rule_config"(
"_id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"step_id" INTEGER,
"deduct_ids" TEXT,
"exam_site_id" INTEGER,
"rule_id" INTEGER,
"value_type" INTEGER,
"value" TEXT,
"allow_user_set" INTEGER,
"area_code" TEXT,
"name" TEXT,
"value2" INTEGER,
"min_value" INTEGER,
"max_value" INTEGER,
"min_value2" INTEGER,
"max_value2" INTEGER,
"user_id" TEXT,
"had_set_by_user" INTEGER,
"options" TEXT,
"position" INTEGER,
"level" INTEGER
);

create TABLE "t_cost"(
"_id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"order_no" TEXT,
"status" INTEGER,
"learner_id" TEXT,
"time" INTEGER,
"pause_time" INTEGER,
"train_type" INTEGER,
"train_program" INTEGER,
"no_cost_time" INTEGER,
"type" INTEGER,
"start_time" INTEGER,
"start_date_time" INTEGER,
"end_date_time" INTEGER,
"consume_id" TEXT,
"cost_type" INTEGER,
"token" TEXT
);

create TABLE "t_k3_hp_map"(
"_id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"exam_site_id" TEXT,
"type" INTEGER,
"content" TEXT
);

create TABLE "t_upload_log"(
"_id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"type" INTEGER,
"log" TEXT,
"time_stamp" INTEGER
);

create TABLE "t_log"(
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

create TABLE "t_download_res"(
"_id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"version" INTEGER,
"download_id" INTEGER,
"item_id" TEXT,
"item_group0" TEXT,
"item_group1" TEXT,
"item_group2" TEXT,
"item_group3" TEXT
);

create TABLE "t_face_label"(
"_id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"distance" TEXT,
"vector" TEXT,
"mark" TEXT,
"face_file" TEXT,
"student_id" TEXT,
"mucang_id" TEXT,
"label" TEXT,
"label_type" TEXT,
"extend" TEXT,
"extend1" TEXT,
"face_x" INTEGER,
"face_y" INTEGER,
"face_width" INTEGER,
"face_height" INTEGER,
"create_time" INTEGER
);

create TABLE "t_face_history"(
"_id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"mark" TEXT,
"mucang_id" TEXT,
"update_time" INTEGER
);

create TABLE "t_highlight_video"(
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
"update_time" INTEGER,
"zip_path" TEXT
);