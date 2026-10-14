create table if not exists "t_device_info" (
    "_id" integer primary key autoincrement,
    "province_id" integer,
    "city_id" integer,
    "manufacturer" text,
    "device_model" text,
    "serial_no" text,
    "imei" text,
    "color" integer,
    "car_no" text,
    "device_phone" text,
    "platform_ip" text,
    "platform_port" integer,
    "platform_host" text
);

create table if not exists "t_device_config" (
    "_id" integer primary key autoincrement,
    "take_photo_interval" integer,
    "photo_upload_mode" integer,
    "speak_extra_info" integer,
    "acc_off_stop_delay" integer,
    "acc_off_gnss_upload_interval" integer,
    "acc_off_coach_auto_logout_delay" integer,
    "authentication_interval" integer,
    "coach_cross_school" integer,
    "student_cross_school" integer,
    "respond_same_message_interval" integer
);

create table if not exists "t_register_info" (
    "_id" integer primary key autoincrement,
    "platform_code" text,
    "ins_code" text,
    "device_code" text,
    "cert_password" text,
    "device_certificate" text
);

create table if not exists "t_device_parameter" (
    "_id" integer primary key autoincrement,
    "parameter_id" integer,
    "value" text
);

create table if not exists "t_coach_info" (
    "_id" integer primary key autoincrement,
    "coach_no" text,
    "coach_name" text,
    "id_card" text,
    "avatar" text,
    "teach_type" text,
    "drive_type" text,
    "school_name" text,
    "status" integer,
    "update_time" integer
);

create table if not exists "t_student_info" (
    "_id" integer primary key autoincrement,
    "student_no" text,
    "student_name" text,
    "id_card" text,
    "avatar" text,
    "drive_licence" text,
    "coach_no" text,
    "course_code" text,
    "classroom_id" integer,
    "status" integer,
    "total_duration" integer,
    "finished_duration" integer,
    "total_mileage" integer,
    "finished_mileage" integer,
    "update_time" integer,
    "coach_take_photo" integer
);

create table if not exists "t_course_record" (
    "_id" integer primary key autoincrement,
    "record_no" text,
    "student_no" text,
    "coach_no" text,
    "course_code" text,
    "classroom_id" integer,
    "record_status" integer,
    "max_speed" text,
    "mileage" text,
    "record_time" integer,
    "gnss_data" text,
    "upload_status" integer
);

create table if not exists "t_photo_record" (
    "_id" integer primary key autoincrement,
    "photo_id" text,
    "user_code" text,
    "classroom_id" integer,
    "upload_mode" integer,
    "event_type" integer,
    "path" text,
    "record_time" integer,
    "upload_status" integer,
    "gnss_data" text
);

create table if not exists "t_gnss" (
    "_id" integer primary key autoincrement,
    "gnss_data" text,
    "create_time" integer,
    "upload_status" integer
);